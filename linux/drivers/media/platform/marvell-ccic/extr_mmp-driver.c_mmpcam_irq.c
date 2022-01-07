
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dev_lock; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (unsigned int) ;
 int REG_IRQSTAT ;
 unsigned int mcam_reg_read (struct mcam_camera*,int ) ;
 unsigned int mccic_irq (struct mcam_camera*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t mmpcam_irq(int irq, void *data)
{
 struct mcam_camera *mcam = data;
 unsigned int irqs, handled;

 spin_lock(&mcam->dev_lock);
 irqs = mcam_reg_read(mcam, REG_IRQSTAT);
 handled = mccic_irq(mcam, irqs);
 spin_unlock(&mcam->dev_lock);
 return IRQ_RETVAL(handled);
}
