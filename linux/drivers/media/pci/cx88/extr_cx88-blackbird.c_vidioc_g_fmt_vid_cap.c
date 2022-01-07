
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizeimage; int field; int height; int width; int colorspace; scalar_t__ bytesperline; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx88_core {int field; int height; int width; } ;
struct cx8802_dev {int ts_packet_size; int ts_packet_count; struct cx88_core* core; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_PIX_FMT_MPEG ;
 struct cx8802_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct cx8802_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 f->fmt.pix.pixelformat = V4L2_PIX_FMT_MPEG;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.sizeimage = dev->ts_packet_size * dev->ts_packet_count;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 f->fmt.pix.width = core->width;
 f->fmt.pix.height = core->height;
 f->fmt.pix.field = core->field;
 return 0;
}
