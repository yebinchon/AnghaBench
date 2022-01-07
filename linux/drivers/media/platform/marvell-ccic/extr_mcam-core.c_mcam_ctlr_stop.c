
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dummy; } ;


 int C0_ENABLE ;
 int REG_CTRL0 ;
 int mcam_reg_clear_bit (struct mcam_camera*,int ,int ) ;

__attribute__((used)) static void mcam_ctlr_stop(struct mcam_camera *cam)
{
 mcam_reg_clear_bit(cam, REG_CTRL0, C0_ENABLE);
}
