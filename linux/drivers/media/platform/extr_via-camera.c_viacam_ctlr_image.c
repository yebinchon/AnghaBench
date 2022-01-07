
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bytesperline; scalar_t__ pixelformat; } ;
struct TYPE_3__ {int height; int bytesperline; } ;
struct via_camera {int n_cap_bufs; TYPE_2__ user_format; TYPE_1__ sensor_format; } ;


 scalar_t__ V4L2_PIX_FMT_YUYV ;
 int VCR_CAPINTC ;
 int VCR_CI_3BUFS ;
 int VCR_CI_CCIR601_8 ;
 int VCR_CI_CLKEN ;
 int VCR_CI_DIBOTH ;
 int VCR_CI_ENABLE ;
 int VCR_CI_FLDINV ;
 int VCR_CI_UYVY ;
 int VCR_CI_VREFINV ;
 int VCR_CI_YUYV ;
 int VCR_HORRANGE ;
 int VCR_MAXDATA ;
 int VCR_MAXVBI ;
 int VCR_VERTRANGE ;
 int VCR_VSTRIDE ;
 int VCR_VS_STRIDE ;
 int viacam_set_scale (struct via_camera*) ;
 int viacam_write_reg (struct via_camera*,int ,int) ;

__attribute__((used)) static void viacam_ctlr_image(struct via_camera *cam)
{
 int cicreg;





 viacam_write_reg(cam, VCR_CAPINTC, ~(VCR_CI_ENABLE|VCR_CI_CLKEN));




 viacam_write_reg(cam, VCR_HORRANGE, 0x06200120);
 viacam_write_reg(cam, VCR_VERTRANGE, 0x01de0000);
 viacam_set_scale(cam);



 viacam_write_reg(cam, VCR_MAXDATA,
   (cam->sensor_format.height << 16) |
   (cam->sensor_format.bytesperline >> 3));
 viacam_write_reg(cam, VCR_MAXVBI, 0);
 viacam_write_reg(cam, VCR_VSTRIDE,
   cam->user_format.bytesperline & VCR_VS_STRIDE);







 cicreg = VCR_CI_CLKEN |
  0x08000000 |
  VCR_CI_FLDINV |
  VCR_CI_VREFINV |
  VCR_CI_DIBOTH |
  VCR_CI_CCIR601_8;
 if (cam->n_cap_bufs == 3)
  cicreg |= VCR_CI_3BUFS;



 if (cam->user_format.pixelformat == V4L2_PIX_FMT_YUYV)
  cicreg |= VCR_CI_YUYV;
 else
  cicreg |= VCR_CI_UYVY;
 viacam_write_reg(cam, VCR_CAPINTC, cicreg);
}
