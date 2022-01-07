
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int code; } ;
struct TYPE_8__ {int vdev; } ;
struct fimc_vid_cap {TYPE_3__ ci_fmt; TYPE_2__ ve; TYPE_1__* ctx; } ;
struct fimc_source_info {int fimc_bus_type; } ;
struct fimc_frame {int o_width; int o_height; TYPE_4__* fmt; } ;
struct fimc_dev {scalar_t__ regs; struct fimc_vid_cap vid_cap; } ;
struct TYPE_11__ {int cisrcfmt; int bus_width; int pixelcode; } ;
struct TYPE_10__ {int color; } ;
struct TYPE_7__ {struct fimc_frame s_frame; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int EINVAL ;




 scalar_t__ FIMC_REG_CISRCFMT ;
 int FIMC_REG_CISRCFMT_ITU601_16BIT ;
 int FIMC_REG_CISRCFMT_ITU601_8BIT ;
 int fimc_fmt_is_user_defined (int ) ;
 TYPE_5__* pix_desc ;
 int v4l2_err (int *,char*,int ) ;
 int writel (int,scalar_t__) ;

int fimc_hw_set_camera_source(struct fimc_dev *fimc,
         struct fimc_source_info *source)
{
 struct fimc_vid_cap *vc = &fimc->vid_cap;
 struct fimc_frame *f = &vc->ctx->s_frame;
 u32 bus_width, cfg = 0;
 int i;

 switch (source->fimc_bus_type) {
 case 130:
 case 129:
  for (i = 0; i < ARRAY_SIZE(pix_desc); i++) {
   if (vc->ci_fmt.code == pix_desc[i].pixelcode) {
    cfg = pix_desc[i].cisrcfmt;
    bus_width = pix_desc[i].bus_width;
    break;
   }
  }

  if (i == ARRAY_SIZE(pix_desc)) {
   v4l2_err(&vc->ve.vdev,
     "Camera color format not supported: %d\n",
     vc->ci_fmt.code);
   return -EINVAL;
  }

  if (source->fimc_bus_type == 130) {
   if (bus_width == 8)
    cfg |= FIMC_REG_CISRCFMT_ITU601_8BIT;
   else if (bus_width == 16)
    cfg |= FIMC_REG_CISRCFMT_ITU601_16BIT;
  }
  break;
 case 128:
  if (fimc_fmt_is_user_defined(f->fmt->color))
   cfg |= FIMC_REG_CISRCFMT_ITU601_8BIT;
  break;
 default:
 case 131:

  break;
 }

 cfg |= (f->o_width << 16) | f->o_height;
 writel(cfg, fimc->regs + FIMC_REG_CISRCFMT);
 return 0;
}
