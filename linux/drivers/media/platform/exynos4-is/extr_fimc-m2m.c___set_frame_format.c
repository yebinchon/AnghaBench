
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int height; int width; TYPE_1__* plane_fmt; } ;
struct fimc_frame {struct fimc_fmt* fmt; scalar_t__ offs_v; scalar_t__ offs_h; int height; int width; int o_height; int o_width; int f_height; int f_width; int * payload; int * bytesperline; } ;
struct fimc_fmt {int memplanes; } ;
struct TYPE_2__ {int sizeimage; int bytesperline; } ;



__attribute__((used)) static void __set_frame_format(struct fimc_frame *frame, struct fimc_fmt *fmt,
          struct v4l2_pix_format_mplane *pixm)
{
 int i;

 for (i = 0; i < fmt->memplanes; i++) {
  frame->bytesperline[i] = pixm->plane_fmt[i].bytesperline;
  frame->payload[i] = pixm->plane_fmt[i].sizeimage;
 }

 frame->f_width = pixm->width;
 frame->f_height = pixm->height;
 frame->o_width = pixm->width;
 frame->o_height = pixm->height;
 frame->width = pixm->width;
 frame->height = pixm->height;
 frame->offs_h = 0;
 frame->offs_v = 0;
 frame->fmt = fmt;
}
