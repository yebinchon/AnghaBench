
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int num_planes; TYPE_3__* plane_fmt; int colorspace; int pixelformat; int field; int height; int width; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct fimc_frame {int * payload; int * bytesperline; TYPE_2__* fmt; int o_height; int o_width; } ;
struct TYPE_6__ {int sizeimage; int bytesperline; } ;
struct TYPE_5__ {int memplanes; int fourcc; } ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;

void __fimc_get_format(struct fimc_frame *frame, struct v4l2_format *f)
{
 struct v4l2_pix_format_mplane *pixm = &f->fmt.pix_mp;
 int i;

 pixm->width = frame->o_width;
 pixm->height = frame->o_height;
 pixm->field = V4L2_FIELD_NONE;
 pixm->pixelformat = frame->fmt->fourcc;
 pixm->colorspace = V4L2_COLORSPACE_JPEG;
 pixm->num_planes = frame->fmt->memplanes;

 for (i = 0; i < pixm->num_planes; ++i) {
  pixm->plane_fmt[i].bytesperline = frame->bytesperline[i];
  pixm->plane_fmt[i].sizeimage = frame->payload[i];
 }
}
