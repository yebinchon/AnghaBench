
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ line; scalar_t__ initial; } ;
struct TYPE_4__ {int top; scalar_t__ width; scalar_t__ left; } ;
struct camif_frame {int f_width; TYPE_1__ dma_offset; TYPE_2__ rect; } ;
struct camif_vp {struct camif_frame out_frame; } ;


 int pr_debug (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void camif_prepare_dma_offset(struct camif_vp *vp)
{
 struct camif_frame *f = &vp->out_frame;

 f->dma_offset.initial = f->rect.top * f->f_width + f->rect.left;
 f->dma_offset.line = f->f_width - (f->rect.left + f->rect.width);

 pr_debug("dma_offset: initial: %d, line: %d\n",
   f->dma_offset.initial, f->dma_offset.line);
}
