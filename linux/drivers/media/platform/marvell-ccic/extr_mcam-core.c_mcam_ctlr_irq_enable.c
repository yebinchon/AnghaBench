
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dummy; } ;


 int FRAMEIRQS ;
 int REG_IRQMASK ;
 int REG_IRQSTAT ;
 int mcam_reg_set_bit (struct mcam_camera*,int ,int ) ;
 int mcam_reg_write (struct mcam_camera*,int ,int ) ;

__attribute__((used)) static void mcam_ctlr_irq_enable(struct mcam_camera *cam)
{




 mcam_reg_write(cam, REG_IRQSTAT, FRAMEIRQS);
 mcam_reg_set_bit(cam, REG_IRQMASK, FRAMEIRQS);
}
