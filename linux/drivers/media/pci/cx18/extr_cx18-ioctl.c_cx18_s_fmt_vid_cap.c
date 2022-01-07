
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; int code; } ;
struct v4l2_subdev_format {TYPE_4__ format; int which; } ;
struct TYPE_5__ {int width; int height; scalar_t__ pixelformat; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx18_stream {scalar_t__ pixelformat; int vb_bytes_per_frame; int vb_bytes_per_line; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct TYPE_7__ {int width; int height; } ;
struct cx18 {int sd_av; TYPE_3__ cxhdl; int ana_capturing; struct cx18_stream* streams; } ;


 int EBUSY ;
 int MEDIA_BUS_FMT_FIXED ;
 scalar_t__ V4L2_PIX_FMT_HM12 ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 scalar_t__ atomic_read (int *) ;
 int cx18_g_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int cx18_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 struct cx18_open_id* fh2id (void*) ;
 int pad ;
 int set_fmt ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int cx18_s_fmt_vid_cap(struct file *file, void *fh,
    struct v4l2_format *fmt)
{
 struct cx18_open_id *id = fh2id(fh);
 struct cx18 *cx = id->cx;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 struct cx18_stream *s = &cx->streams[id->type];
 int ret;
 int w, h;

 ret = cx18_try_fmt_vid_cap(file, fh, fmt);
 if (ret)
  return ret;
 w = fmt->fmt.pix.width;
 h = fmt->fmt.pix.height;

 if (cx->cxhdl.width == w && cx->cxhdl.height == h &&
     s->pixelformat == fmt->fmt.pix.pixelformat)
  return 0;

 if (atomic_read(&cx->ana_capturing) > 0)
  return -EBUSY;

 s->pixelformat = fmt->fmt.pix.pixelformat;


 if (s->pixelformat == V4L2_PIX_FMT_HM12) {
  s->vb_bytes_per_frame = h * 720 * 3 / 2;
  s->vb_bytes_per_line = 720;
 } else {
  s->vb_bytes_per_frame = h * 720 * 2;
  s->vb_bytes_per_line = 1440;
 }

 format.format.width = cx->cxhdl.width = w;
 format.format.height = cx->cxhdl.height = h;
 format.format.code = MEDIA_BUS_FMT_FIXED;
 v4l2_subdev_call(cx->sd_av, pad, set_fmt, ((void*)0), &format);
 return cx18_g_fmt_vid_cap(file, fh, fmt);
}
