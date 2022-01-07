
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct timer_list {int dummy; } ;
struct TYPE_5__ {int tx_carrier_errors; } ;
struct net_device {unsigned int base_addr; scalar_t__ if_port; TYPE_2__ stats; int irq; } ;
struct TYPE_6__ {void* expires; } ;
struct el3_private {int fast_poll; int media_status; TYPE_3__ media; int lock; scalar_t__ last_irq; TYPE_1__* p_dev; } ;
struct TYPE_4__ {struct net_device* priv; } ;


 int EL3WINDOW (int) ;
 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 scalar_t__ EL3_TIMER ;
 int HZ ;
 int IntLatch ;
 int StatsDisable ;
 int StatsEnable ;
 scalar_t__ WN4_MEDIA ;
 int add_timer (TYPE_3__*) ;
 int el3_interrupt (int ,struct net_device*) ;
 struct el3_private* from_timer (int ,struct timer_list*,int ) ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 void* jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct el3_private* lp ;
 int media ;
 int netdev_info (struct net_device*,char*,...) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_device_present (struct net_device*) ;
 int outw (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tc589_set_xcvr (struct net_device*,int) ;
 scalar_t__ time_before (void*,scalar_t__) ;

__attribute__((used)) static void media_check(struct timer_list *t)
{
 struct el3_private *lp = from_timer(lp, t, media);
 struct net_device *dev = lp->p_dev->priv;
 unsigned int ioaddr = dev->base_addr;
 u16 media, errs;
 unsigned long flags;

 if (!netif_device_present(dev))
  goto reschedule;




 if ((inw(ioaddr + EL3_STATUS) & IntLatch) &&
 (inb(ioaddr + EL3_TIMER) == 0xff)) {
  if (!lp->fast_poll)
   netdev_warn(dev, "interrupt(s) dropped!\n");

  local_irq_save(flags);
  el3_interrupt(dev->irq, dev);
  local_irq_restore(flags);

  lp->fast_poll = HZ;
 }
 if (lp->fast_poll) {
  lp->fast_poll--;
  lp->media.expires = jiffies + HZ/100;
  add_timer(&lp->media);
  return;
 }





 spin_lock_irqsave(&lp->lock, flags);
 EL3WINDOW(4);
 media = inw(ioaddr+WN4_MEDIA) & 0xc810;


 if (time_before(jiffies, lp->last_irq + HZ)) {
  media &= ~0x0010;
 } else {

  EL3WINDOW(6);
  outw(StatsDisable, ioaddr + EL3_CMD);
  errs = inb(ioaddr + 0);
  outw(StatsEnable, ioaddr + EL3_CMD);
  dev->stats.tx_carrier_errors += errs;
  if (errs || (lp->media_status & 0x0010))
   media |= 0x0010;
 }

 if (media != lp->media_status) {
  if ((media & lp->media_status & 0x8000) &&
    ((lp->media_status ^ media) & 0x0800))
  netdev_info(dev, "%s link beat\n",
    (lp->media_status & 0x0800 ? "lost" : "found"));
  else if ((media & lp->media_status & 0x4000) &&
   ((lp->media_status ^ media) & 0x0010))
  netdev_info(dev, "coax cable %s\n",
    (lp->media_status & 0x0010 ? "ok" : "problem"));
  if (dev->if_port == 0) {
   if (media & 0x8000) {
    if (media & 0x0800)
     netdev_info(dev, "flipped to 10baseT\n");
    else
   tc589_set_xcvr(dev, 2);
   } else if (media & 0x4000) {
    if (media & 0x0010)
     tc589_set_xcvr(dev, 1);
    else
     netdev_info(dev, "flipped to 10base2\n");
   }
  }
  lp->media_status = media;
 }

 EL3WINDOW(1);
 spin_unlock_irqrestore(&lp->lock, flags);

reschedule:
 lp->media.expires = jiffies + HZ;
 add_timer(&lp->media);
}
