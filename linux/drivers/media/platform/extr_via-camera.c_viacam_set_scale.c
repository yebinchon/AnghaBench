
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;
struct via_camera {TYPE_1__ user_format; } ;


 int VCR_AVSCALE ;
 int VCR_AVS_HEN ;
 int VCR_AVS_VEN ;
 int VGA_HEIGHT ;
 int VGA_WIDTH ;
 int viacam_write_reg (struct via_camera*,int ,unsigned int) ;

__attribute__((used)) static void viacam_set_scale(struct via_camera *cam)
{
 unsigned int avscale;
 int sf;

 if (cam->user_format.width == VGA_WIDTH)
  avscale = 0;
 else {
  sf = (cam->user_format.width*2048)/VGA_WIDTH;
  avscale = VCR_AVS_HEN | sf;
 }
 if (cam->user_format.height < VGA_HEIGHT) {
  sf = (1024*cam->user_format.height)/VGA_HEIGHT;
  avscale |= VCR_AVS_VEN | (sf << 16);
 }
 viacam_write_reg(cam, VCR_AVSCALE, avscale);
}
