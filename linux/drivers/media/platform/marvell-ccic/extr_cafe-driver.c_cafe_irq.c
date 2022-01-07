
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dev_lock; } ;
struct cafe_camera {int smbus_wait; scalar_t__ registered; struct mcam_camera mcam; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (unsigned int) ;
 int REG_IRQSTAT ;
 unsigned int TWSIIRQS ;
 unsigned int mcam_reg_read (struct mcam_camera*,int ) ;
 int mcam_reg_write (struct mcam_camera*,int ,unsigned int) ;
 scalar_t__ mccic_irq (struct mcam_camera*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t cafe_irq(int irq, void *data)
{
 struct cafe_camera *cam = data;
 struct mcam_camera *mcam = &cam->mcam;
 unsigned int irqs, handled;

 spin_lock(&mcam->dev_lock);
 irqs = mcam_reg_read(mcam, REG_IRQSTAT);
 handled = cam->registered && mccic_irq(mcam, irqs);
 if (irqs & TWSIIRQS) {
  mcam_reg_write(mcam, REG_IRQSTAT, TWSIIRQS);
  wake_up(&cam->smbus_wait);
  handled = 1;
 }
 spin_unlock(&mcam->dev_lock);
 return IRQ_RETVAL(handled);
}
