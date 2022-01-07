
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct b44 {int istat; int lock; int napi; } ;
typedef int irqreturn_t ;


 int B44_IMASK ;
 int B44_ISTAT ;
 int IRQ_RETVAL (int) ;
 int __b44_disable_ints (struct b44*) ;
 int __napi_schedule (int *) ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int netdev_info (struct net_device*,char*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t b44_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct b44 *bp = netdev_priv(dev);
 u32 istat, imask;
 int handled = 0;

 spin_lock(&bp->lock);

 istat = br32(bp, B44_ISTAT);
 imask = br32(bp, B44_IMASK);





 istat &= imask;
 if (istat) {
  handled = 1;

  if (unlikely(!netif_running(dev))) {
   netdev_info(dev, "late interrupt\n");
   goto irq_ack;
  }

  if (napi_schedule_prep(&bp->napi)) {



   bp->istat = istat;
   __b44_disable_ints(bp);
   __napi_schedule(&bp->napi);
  }

irq_ack:
  bw32(bp, B44_ISTAT, istat);
  br32(bp, B44_ISTAT);
 }
 spin_unlock(&bp->lock);
 return IRQ_RETVAL(handled);
}
