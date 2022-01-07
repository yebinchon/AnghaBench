
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ravb_private {int lock; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISS ;
 int ISS_CGIS ;
 int ISS_ES ;
 int ISS_FRS ;
 int ISS_FTS ;
 int ISS_MS ;
 int ISS_TFUS ;
 int RAVB_BE ;
 int RAVB_NC ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_emac_interrupt_unlocked (struct net_device*) ;
 int ravb_error_interrupt (struct net_device*) ;
 int ravb_ptp_interrupt (struct net_device*) ;
 scalar_t__ ravb_queue_interrupt (struct net_device*,int) ;
 int ravb_read (struct net_device*,int ) ;
 scalar_t__ ravb_timestamp_interrupt (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t ravb_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = dev_id;
 struct ravb_private *priv = netdev_priv(ndev);
 irqreturn_t result = IRQ_NONE;
 u32 iss;

 spin_lock(&priv->lock);

 iss = ravb_read(ndev, ISS);


 if (iss & (ISS_FRS | ISS_FTS | ISS_TFUS)) {
  int q;


  if (ravb_timestamp_interrupt(ndev))
   result = IRQ_HANDLED;


  for (q = RAVB_NC; q >= RAVB_BE; q--) {
   if (ravb_queue_interrupt(ndev, q))
    result = IRQ_HANDLED;
  }
 }


 if (iss & ISS_MS) {
  ravb_emac_interrupt_unlocked(ndev);
  result = IRQ_HANDLED;
 }


 if (iss & ISS_ES) {
  ravb_error_interrupt(ndev);
  result = IRQ_HANDLED;
 }


 if (iss & ISS_CGIS) {
  ravb_ptp_interrupt(ndev);
  result = IRQ_HANDLED;
 }

 spin_unlock(&priv->lock);
 return result;
}
