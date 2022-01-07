
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_8__ {int bytesperline; TYPE_3__ frame; } ;
struct TYPE_5__ {int width; int height; } ;
struct TYPE_6__ {TYPE_1__ frame; } ;
struct sh_veu_dev {scalar_t__ is_2h; TYPE_4__ vfmt_out; TYPE_2__ vfmt_in; } ;


 int ALIGN (int,int) ;
 int VEU_BSRR ;
 int VEU_BSSR ;
 int VEU_COFFR ;
 int VEU_DACR ;
 int VEU_EDWR ;
 int VEU_MCR00 ;
 int VEU_MCR01 ;
 int VEU_MCR02 ;
 int VEU_MCR10 ;
 int VEU_MCR11 ;
 int VEU_MCR12 ;
 int VEU_MCR20 ;
 int VEU_MCR21 ;
 int VEU_MCR22 ;
 int VEU_SSR ;
 int VEU_SWPR ;
 int VEU_SWR ;
 int VEU_TRCR ;
 int sh_veu_reg_write (struct sh_veu_dev*,int ,int) ;
 int sh_veu_scale_h (struct sh_veu_dev*,int,int,int) ;
 int sh_veu_scale_v (struct sh_veu_dev*,int,int,int) ;

__attribute__((used)) static void sh_veu_configure(struct sh_veu_dev *veu)
{
 u32 src_width, src_stride, src_height;
 u32 dst_width, dst_stride, dst_height;
 u32 real_w, real_h;


 sh_veu_reg_write(veu, VEU_BSRR, 0x100);

 src_width = veu->vfmt_in.frame.width;
 src_height = veu->vfmt_in.frame.height;
 src_stride = ALIGN(veu->vfmt_in.frame.width, 16);

 dst_width = real_w = veu->vfmt_out.frame.width;
 dst_height = real_h = veu->vfmt_out.frame.height;

 dst_stride = veu->vfmt_out.bytesperline;






 src_width = sh_veu_scale_h(veu, src_width, real_w, dst_width);
 src_height = sh_veu_scale_v(veu, src_height, real_h, dst_height);

 sh_veu_reg_write(veu, VEU_SWR, src_stride);
 sh_veu_reg_write(veu, VEU_SSR, src_width | (src_height << 16));
 sh_veu_reg_write(veu, VEU_BSSR, 0);

 sh_veu_reg_write(veu, VEU_EDWR, dst_stride);
 sh_veu_reg_write(veu, VEU_DACR, 0);

 sh_veu_reg_write(veu, VEU_SWPR, 0x67);
 sh_veu_reg_write(veu, VEU_TRCR, (6 << 16) | (0 << 14) | 2 | 4);

 if (veu->is_2h) {
  sh_veu_reg_write(veu, VEU_MCR00, 0x0cc5);
  sh_veu_reg_write(veu, VEU_MCR01, 0x0950);
  sh_veu_reg_write(veu, VEU_MCR02, 0x0000);

  sh_veu_reg_write(veu, VEU_MCR10, 0x397f);
  sh_veu_reg_write(veu, VEU_MCR11, 0x0950);
  sh_veu_reg_write(veu, VEU_MCR12, 0x3ccd);

  sh_veu_reg_write(veu, VEU_MCR20, 0x0000);
  sh_veu_reg_write(veu, VEU_MCR21, 0x0950);
  sh_veu_reg_write(veu, VEU_MCR22, 0x1023);

  sh_veu_reg_write(veu, VEU_COFFR, 0x00800010);
 }
}
