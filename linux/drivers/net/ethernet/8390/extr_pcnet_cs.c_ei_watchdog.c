
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {void* expires; } ;
struct pcnet_dev {int fast_poll; int flags; int phy_id; int eth_phy; int link_status; int pna_phy; TYPE_2__ watchdog; void* mii_reset; int stale; TYPE_1__* p_dev; } ;
struct net_device {unsigned int base_addr; int irq; } ;
struct TYPE_3__ {struct net_device* priv; } ;


 int DL19FDUPLX ;
 scalar_t__ DLINK_DIAG ;
 unsigned int DLINK_GPIO ;
 scalar_t__ EN0_ISR ;
 int ENISR_ALL ;
 int HAS_MII ;
 int HZ ;
 int IS_DL10019 ;
 int IS_DL10022 ;
 int NS8390_init (struct net_device*,int) ;
 int add_timer (TYPE_2__*) ;
 int ei_irq_wrapper (int ,struct net_device*) ;
 struct pcnet_dev* from_timer (int ,struct timer_list*,int ) ;
 int inb_p (scalar_t__) ;
 struct pcnet_dev* info ;
 void* jiffies ;
 int mdio_read (unsigned int,int,int) ;
 int mdio_write (unsigned int,int,int ,int) ;
 int netdev_info (struct net_device*,char*,...) ;
 int netif_device_present (struct net_device*) ;
 int outb (int,scalar_t__) ;
 scalar_t__ time_after (void*,void*) ;
 int watchdog ;
 int write_asic (unsigned int,int,int ) ;

__attribute__((used)) static void ei_watchdog(struct timer_list *t)
{
    struct pcnet_dev *info = from_timer(info, t, watchdog);
    struct net_device *dev = info->p_dev->priv;
    unsigned int nic_base = dev->base_addr;
    unsigned int mii_addr = nic_base + DLINK_GPIO;
    u_short link;

    if (!netif_device_present(dev)) goto reschedule;



    if (info->stale++ && (inb_p(nic_base + EN0_ISR) & ENISR_ALL)) {
 if (!info->fast_poll)
     netdev_info(dev, "interrupt(s) dropped!\n");
 ei_irq_wrapper(dev->irq, dev);
 info->fast_poll = HZ;
    }
    if (info->fast_poll) {
 info->fast_poll--;
 info->watchdog.expires = jiffies + 1;
 add_timer(&info->watchdog);
 return;
    }

    if (!(info->flags & HAS_MII))
 goto reschedule;

    mdio_read(mii_addr, info->phy_id, 1);
    link = mdio_read(mii_addr, info->phy_id, 1);
    if (!link || (link == 0xffff)) {
 if (info->eth_phy) {
     info->phy_id = info->eth_phy = 0;
 } else {
     netdev_info(dev, "MII is missing!\n");
     info->flags &= ~HAS_MII;
 }
 goto reschedule;
    }

    link &= 0x0004;
    if (link != info->link_status) {
 u_short p = mdio_read(mii_addr, info->phy_id, 5);
 netdev_info(dev, "%s link beat\n", link ? "found" : "lost");
 if (link && (info->flags & IS_DL10022)) {

     outb((p & 0x0140) ? 4 : 0, nic_base + DLINK_DIAG);
 } else if (link && (info->flags & IS_DL10019)) {

     write_asic(dev->base_addr, 4, (p & 0x140) ? DL19FDUPLX : 0);
 }
 if (link) {
     if (info->phy_id == info->eth_phy) {
  if (p)
      netdev_info(dev, "autonegotiation complete: "
    "%sbaseT-%cD selected\n",
    ((p & 0x0180) ? "100" : "10"),
    ((p & 0x0140) ? 'F' : 'H'));
  else
      netdev_info(dev, "link partner did not autonegotiate\n");
     }
     NS8390_init(dev, 1);
 }
 info->link_status = link;
    }
    if (info->pna_phy && time_after(jiffies, info->mii_reset + 6*HZ)) {
 link = mdio_read(mii_addr, info->eth_phy, 1) & 0x0004;
 if (((info->phy_id == info->pna_phy) && link) ||
     ((info->phy_id != info->pna_phy) && !link)) {

     mdio_write(mii_addr, info->phy_id, 0, 0x0400);
     info->phy_id ^= info->pna_phy ^ info->eth_phy;
     netdev_info(dev, "switched to %s transceiver\n",
   (info->phy_id == info->eth_phy) ? "ethernet" : "PNA");
     mdio_write(mii_addr, info->phy_id, 0,
         (info->phy_id == info->eth_phy) ? 0x1000 : 0);
     info->link_status = 0;
     info->mii_reset = jiffies;
 }
    }

reschedule:
    info->watchdog.expires = jiffies + HZ;
    add_timer(&info->watchdog);
}
