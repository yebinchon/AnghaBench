
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct gsc_dev {scalar_t__ regs; } ;
struct TYPE_8__ {TYPE_3__* vflip; TYPE_2__* hflip; TYPE_1__* rotate; } ;
struct gsc_ctx {TYPE_4__ gsc_ctrls; struct gsc_dev* gsc_dev; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_5__ {int val; } ;


 scalar_t__ GSC_IN_CON ;
 int GSC_IN_ROT_180 ;
 int GSC_IN_ROT_270 ;
 int GSC_IN_ROT_90 ;
 int GSC_IN_ROT_90_XFLIP ;
 int GSC_IN_ROT_90_YFLIP ;
 int GSC_IN_ROT_MASK ;
 int GSC_IN_ROT_XFLIP ;
 int GSC_IN_ROT_YFLIP ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_rotation(struct gsc_ctx *ctx)
{
 struct gsc_dev *dev = ctx->gsc_dev;
 u32 cfg;

 cfg = readl(dev->regs + GSC_IN_CON);
 cfg &= ~GSC_IN_ROT_MASK;

 switch (ctx->gsc_ctrls.rotate->val) {
 case 270:
  cfg |= GSC_IN_ROT_270;
  break;
 case 180:
  cfg |= GSC_IN_ROT_180;
  break;
 case 90:
  if (ctx->gsc_ctrls.hflip->val)
   cfg |= GSC_IN_ROT_90_XFLIP;
  else if (ctx->gsc_ctrls.vflip->val)
   cfg |= GSC_IN_ROT_90_YFLIP;
  else
   cfg |= GSC_IN_ROT_90;
  break;
 case 0:
  if (ctx->gsc_ctrls.hflip->val)
   cfg |= GSC_IN_ROT_XFLIP;
  else if (ctx->gsc_ctrls.vflip->val)
   cfg |= GSC_IN_ROT_YFLIP;
 }

 writel(cfg, dev->regs + GSC_IN_CON);
}
