
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int height; int width; int top; int left; } ;
struct gsc_frame {TYPE_1__ crop; int f_height; int f_width; } ;
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_ctx {struct gsc_frame s_frame; struct gsc_dev* gsc_dev; } ;


 int GSC_CROPPED_HEIGHT (int ) ;
 scalar_t__ GSC_CROPPED_SIZE ;
 int GSC_CROPPED_WIDTH (int ) ;
 int GSC_SRCIMG_HEIGHT (int ) ;
 scalar_t__ GSC_SRCIMG_OFFSET ;
 int GSC_SRCIMG_OFFSET_X (int ) ;
 int GSC_SRCIMG_OFFSET_Y (int ) ;
 scalar_t__ GSC_SRCIMG_SIZE ;
 int GSC_SRCIMG_WIDTH (int ) ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_in_size(struct gsc_ctx *ctx)
{
 struct gsc_dev *dev = ctx->gsc_dev;
 struct gsc_frame *frame = &ctx->s_frame;
 u32 cfg;


 cfg = GSC_SRCIMG_OFFSET_X(frame->crop.left);
 cfg |= GSC_SRCIMG_OFFSET_Y(frame->crop.top);
 writel(cfg, dev->regs + GSC_SRCIMG_OFFSET);


 cfg = GSC_SRCIMG_WIDTH(frame->f_width);
 cfg |= GSC_SRCIMG_HEIGHT(frame->f_height);
 writel(cfg, dev->regs + GSC_SRCIMG_SIZE);


 cfg = GSC_CROPPED_WIDTH(frame->crop.width);
 cfg |= GSC_CROPPED_HEIGHT(frame->crop.height);
 writel(cfg, dev->regs + GSC_CROPPED_SIZE);
}
