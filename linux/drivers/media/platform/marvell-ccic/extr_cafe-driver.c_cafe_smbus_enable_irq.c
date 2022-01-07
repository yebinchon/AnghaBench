
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_lock; } ;
struct cafe_camera {TYPE_1__ mcam; } ;


 int REG_IRQMASK ;
 int TWSIIRQS ;
 int mcam_reg_set_bit (TYPE_1__*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cafe_smbus_enable_irq(struct cafe_camera *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->mcam.dev_lock, flags);
 mcam_reg_set_bit(&cam->mcam, REG_IRQMASK, TWSIIRQS);
 spin_unlock_irqrestore(&cam->mcam.dev_lock, flags);
}
