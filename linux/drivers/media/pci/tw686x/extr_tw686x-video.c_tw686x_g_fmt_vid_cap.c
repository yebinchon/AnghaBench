
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int pixelformat; int field; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; } ;
struct tw686x_video_channel {int width; int height; TYPE_2__* format; struct tw686x_dev* dev; } ;
struct tw686x_dev {TYPE_1__* dma_ops; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int depth; int fourcc; } ;
struct TYPE_5__ {int field; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 struct tw686x_dev *dev = vc->dev;

 f->fmt.pix.width = vc->width;
 f->fmt.pix.height = vc->height;
 f->fmt.pix.field = dev->dma_ops->field;
 f->fmt.pix.pixelformat = vc->format->fourcc;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 f->fmt.pix.bytesperline = (f->fmt.pix.width * vc->format->depth) / 8;
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
 return 0;
}
