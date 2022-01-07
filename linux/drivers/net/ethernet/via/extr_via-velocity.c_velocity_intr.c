
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct velocity_info {int lock; int napi; int mac_regs; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_PPRXI ;
 int ISR_PPTXI ;
 int ISR_PRXI ;
 int ISR_PTXI ;
 int __napi_schedule (int *) ;
 scalar_t__ likely (int ) ;
 int mac_disable_int (int ) ;
 int mac_read_isr (int ) ;
 int mac_write_isr (int ,int) ;
 int napi_schedule_prep (int *) ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int velocity_error (struct velocity_info*,int) ;

__attribute__((used)) static irqreturn_t velocity_intr(int irq, void *dev_instance)
{
 struct net_device *dev = dev_instance;
 struct velocity_info *vptr = netdev_priv(dev);
 u32 isr_status;

 spin_lock(&vptr->lock);
 isr_status = mac_read_isr(vptr->mac_regs);


 if (isr_status == 0) {
  spin_unlock(&vptr->lock);
  return IRQ_NONE;
 }


 mac_write_isr(vptr->mac_regs, isr_status);

 if (likely(napi_schedule_prep(&vptr->napi))) {
  mac_disable_int(vptr->mac_regs);
  __napi_schedule(&vptr->napi);
 }

 if (isr_status & (~(ISR_PRXI | ISR_PPRXI | ISR_PTXI | ISR_PPTXI)))
  velocity_error(vptr, isr_status);

 spin_unlock(&vptr->lock);

 return IRQ_HANDLED;
}
