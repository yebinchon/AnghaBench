
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {scalar_t__ height; scalar_t__ width; void* top; void* left; } ;
struct flite_frame {scalar_t__ f_height; scalar_t__ f_width; } ;
struct fimc_lite {int subdev; TYPE_1__* dd; struct flite_frame inp_frame; } ;
struct TYPE_2__ {int win_hor_offs_align; } ;


 void* clamp_t (int ,void*,int ,scalar_t__) ;
 int debug ;
 void* round_down (void*,int ) ;
 int u32 ;
 int v4l2_dbg (int,int ,int *,char*,void*,void*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int v4l_bound_align_image (scalar_t__*,int ,scalar_t__,int ,scalar_t__*,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void fimc_lite_try_crop(struct fimc_lite *fimc, struct v4l2_rect *r)
{
 struct flite_frame *frame = &fimc->inp_frame;

 v4l_bound_align_image(&r->width, 0, frame->f_width, 0,
         &r->height, 0, frame->f_height, 0, 0);


 r->left = clamp_t(u32, r->left, 0, frame->f_width - r->width);
 r->left = round_down(r->left, fimc->dd->win_hor_offs_align);
 r->top = clamp_t(u32, r->top, 0, frame->f_height - r->height);

 v4l2_dbg(1, debug, &fimc->subdev, "(%d,%d)/%dx%d, sink fmt: %dx%d\n",
   r->left, r->top, r->width, r->height,
   frame->f_width, frame->f_height);
}
