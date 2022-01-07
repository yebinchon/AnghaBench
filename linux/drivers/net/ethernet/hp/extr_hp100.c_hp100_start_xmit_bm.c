
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct TYPE_3__ {int tx_bytes; int tx_packets; } ;
struct net_device {int base_addr; TYPE_1__ stats; int name; } ;
struct hp100_private {scalar_t__ chip; scalar_t__ txrhead; int lan_type; scalar_t__ hub_status; int lock; int txrcommit; int pci_dev; TYPE_2__* txrtail; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {scalar_t__ next; int* pdl; int pdl_paddr; struct sk_buff* skb; } ;
typedef TYPE_2__ hp100_ring_t ;


 int ETH_ZLEN ;
 scalar_t__ HP100_CHIPID_SHASTA ;
 int HP100_LAN_100 ;
 int HP100_LAN_ERR ;
 int HP100_MIN_PACKET_SIZE ;
 scalar_t__ HZ ;
 int NETDEV_TX_OK ;
 int PCI_DMA_TODEVICE ;
 int TRACE ;
 int TX_PDA_L ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dev_trans_start (struct net_device*) ;
 scalar_t__ hp100_check_lan (struct net_device*) ;
 int hp100_ints_off () ;
 int hp100_ints_on () ;
 void* hp100_login_to_vg_hub (struct net_device*,int ) ;
 int hp100_outl (int ,int ) ;
 int hp100_outw (int,int ) ;
 int hp100_sense_lan (struct net_device*) ;
 int hp100_start_interface (struct net_device*) ;
 int hp100_stop_interface (struct net_device*) ;
 int jiffies ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 scalar_t__ pci_map_single (int ,int ,int,int ) ;
 int printk (char*,int ) ;
 scalar_t__ skb_padto (struct sk_buff*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static netdev_tx_t hp100_start_xmit_bm(struct sk_buff *skb,
           struct net_device *dev)
{
 unsigned long flags;
 int i, ok_flag;
 int ioaddr = dev->base_addr;
 struct hp100_private *lp = netdev_priv(dev);
 hp100_ring_t *ringptr;





 if (skb->len <= 0)
  goto drop;

 if (lp->chip == HP100_CHIPID_SHASTA && skb_padto(skb, ETH_ZLEN))
  return NETDEV_TX_OK;


 if (lp->txrtail->next == lp->txrhead) {





  if (time_before(jiffies, dev_trans_start(dev) + HZ))
   goto drop;

  if (hp100_check_lan(dev))
   goto drop;

  if (lp->lan_type == HP100_LAN_100 && lp->hub_status < 0) {

   printk("hp100: %s: login to 100Mb/s hub retry\n", dev->name);
   hp100_stop_interface(dev);
   lp->hub_status = hp100_login_to_vg_hub(dev, 0);
   hp100_start_interface(dev);
  } else {
   spin_lock_irqsave(&lp->lock, flags);
   hp100_ints_off();
   i = hp100_sense_lan(dev);
   hp100_ints_on();
   spin_unlock_irqrestore(&lp->lock, flags);
   if (i == HP100_LAN_ERR)
    printk("hp100: %s: link down detected\n", dev->name);
   else if (lp->lan_type != i) {

    printk("hp100: %s: cable change 10Mb/s <-> 100Mb/s detected\n", dev->name);
    lp->lan_type = i;
    hp100_stop_interface(dev);
    if (lp->lan_type == HP100_LAN_100)
     lp->hub_status = hp100_login_to_vg_hub(dev, 0);
    hp100_start_interface(dev);
   } else {
    printk("hp100: %s: interface reset\n", dev->name);
    hp100_stop_interface(dev);
    if (lp->lan_type == HP100_LAN_100)
     lp->hub_status = hp100_login_to_vg_hub(dev, 0);
    hp100_start_interface(dev);
   }
  }

  goto drop;
 }





 spin_lock_irqsave(&lp->lock, flags);
 ringptr = lp->txrtail;
 lp->txrtail = ringptr->next;


 ok_flag = skb->len >= HP100_MIN_PACKET_SIZE;
 i = ok_flag ? skb->len : HP100_MIN_PACKET_SIZE;

 ringptr->skb = skb;
 ringptr->pdl[0] = ((1 << 16) | i);
 if (lp->chip == HP100_CHIPID_SHASTA) {

  ringptr->pdl[2] = i;
 } else {

  ringptr->pdl[2] = skb->len;
 }


 ringptr->pdl[1] = ((u32) pci_map_single(lp->pci_dev, skb->data, ringptr->pdl[2], PCI_DMA_TODEVICE));


 hp100_outl(ringptr->pdl_paddr, TX_PDA_L);

 lp->txrcommit++;

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;

 spin_unlock_irqrestore(&lp->lock, flags);

 return NETDEV_TX_OK;

drop:
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
