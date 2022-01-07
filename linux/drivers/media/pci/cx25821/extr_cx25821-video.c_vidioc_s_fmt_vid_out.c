
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixelformat; int height; int width; int field; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx25821_channel {int pixel_formats; int height; int width; int field; int fmt; } ;


 int PIXEL_FRMT_411 ;
 int PIXEL_FRMT_422 ;
 scalar_t__ V4L2_PIX_FMT_Y41P ;
 int cx25821_format_by_fourcc (scalar_t__) ;
 int cx25821_vidioc_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;
 struct cx25821_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_out(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct cx25821_channel *chan = video_drvdata(file);
 int err;

 err = cx25821_vidioc_try_fmt_vid_out(file, priv, f);

 if (0 != err)
  return err;

 chan->fmt = cx25821_format_by_fourcc(f->fmt.pix.pixelformat);
 chan->field = f->fmt.pix.field;
 chan->width = f->fmt.pix.width;
 chan->height = f->fmt.pix.height;
 if (f->fmt.pix.pixelformat == V4L2_PIX_FMT_Y41P)
  chan->pixel_formats = PIXEL_FRMT_411;
 else
  chan->pixel_formats = PIXEL_FRMT_422;
 return 0;
}
