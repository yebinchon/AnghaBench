
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int colorspace; int sizeimage; scalar_t__ bytesperline; int field; int pixelformat; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int type; } ;
struct go7007 {int format; int height; int width; } ;
struct file {int dummy; } ;


 int GO7007_BUF_SIZE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_NONE ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *fmt)
{
 struct go7007 *go = video_drvdata(file);

 fmt->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 fmt->fmt.pix.width = go->width;
 fmt->fmt.pix.height = go->height;
 fmt->fmt.pix.pixelformat = go->format;
 fmt->fmt.pix.field = V4L2_FIELD_NONE;
 fmt->fmt.pix.bytesperline = 0;
 fmt->fmt.pix.sizeimage = GO7007_BUF_SIZE;
 fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

 return 0;
}
