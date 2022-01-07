
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {int irq_status; int irq_mask; int dev; int complete; int irq_lock; } ;


 int dev_err (int ,char*,int) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static u32 denali_wait_for_irq(struct denali_controller *denali, u32 irq_mask)
{
 unsigned long time_left, flags;
 u32 irq_status;

 spin_lock_irqsave(&denali->irq_lock, flags);

 irq_status = denali->irq_status;

 if (irq_mask & irq_status) {

  spin_unlock_irqrestore(&denali->irq_lock, flags);
  return irq_status;
 }

 denali->irq_mask = irq_mask;
 reinit_completion(&denali->complete);
 spin_unlock_irqrestore(&denali->irq_lock, flags);

 time_left = wait_for_completion_timeout(&denali->complete,
      msecs_to_jiffies(1000));
 if (!time_left) {
  dev_err(denali->dev, "timeout while waiting for irq 0x%x\n",
   irq_mask);
  return 0;
 }

 return denali->irq_status;
}
