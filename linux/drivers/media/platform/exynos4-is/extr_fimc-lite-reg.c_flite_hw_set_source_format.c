
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct flite_frame {int f_width; int f_height; TYPE_1__* fmt; } ;
struct TYPE_4__ {int vdev; } ;
struct fimc_lite {scalar_t__ regs; TYPE_2__ ve; } ;
struct TYPE_3__ {int mbus_code; } ;


 int ARRAY_SIZE (int**) ;
 scalar_t__ FLITE_REG_CIGCTRL ;
 int FLITE_REG_CIGCTRL_FMT_MASK ;
 scalar_t__ FLITE_REG_CISRCSIZE ;
 int FLITE_REG_CISRCSIZE_ORDER422_MASK ;
 int FLITE_REG_CISRCSIZE_SIZE_CAM_MASK ;
 int readl (scalar_t__) ;
 int** src_pixfmt_map ;
 int v4l2_err (int *,char*,int) ;
 int writel (int,scalar_t__) ;

void flite_hw_set_source_format(struct fimc_lite *dev, struct flite_frame *f)
{
 u32 pixelcode = f->fmt->mbus_code;
 int i = ARRAY_SIZE(src_pixfmt_map);
 u32 cfg;

 while (--i) {
  if (src_pixfmt_map[i][0] == pixelcode)
   break;
 }

 if (i == 0 && src_pixfmt_map[i][0] != pixelcode) {
  v4l2_err(&dev->ve.vdev,
    "Unsupported pixel code, falling back to %#08x\n",
    src_pixfmt_map[i][0]);
 }

 cfg = readl(dev->regs + FLITE_REG_CIGCTRL);
 cfg &= ~FLITE_REG_CIGCTRL_FMT_MASK;
 cfg |= src_pixfmt_map[i][2];
 writel(cfg, dev->regs + FLITE_REG_CIGCTRL);

 cfg = readl(dev->regs + FLITE_REG_CISRCSIZE);
 cfg &= ~(FLITE_REG_CISRCSIZE_ORDER422_MASK |
   FLITE_REG_CISRCSIZE_SIZE_CAM_MASK);
 cfg |= (f->f_width << 16) | f->f_height;
 cfg |= src_pixfmt_map[i][1];
 writel(cfg, dev->regs + FLITE_REG_CISRCSIZE);
}
