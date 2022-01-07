
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int colorspace; int field; int sizeimage; scalar_t__ bytesperline; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct saa7164_port {int height; int width; } ;
struct saa7164_encoder_fh {struct saa7164_port* port; } ;
struct file {struct saa7164_encoder_fh* private_data; } ;


 int SAA7164_SIZEIMAGE ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_MPEG ;

__attribute__((used)) static int vidioc_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct saa7164_encoder_fh *fh = file->private_data;
 struct saa7164_port *port = fh->port;

 f->fmt.pix.pixelformat = V4L2_PIX_FMT_MPEG;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.sizeimage = SAA7164_SIZEIMAGE;
 f->fmt.pix.field = V4L2_FIELD_INTERLACED;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 f->fmt.pix.width = port->width;
 f->fmt.pix.height = port->height;
 return 0;
}
