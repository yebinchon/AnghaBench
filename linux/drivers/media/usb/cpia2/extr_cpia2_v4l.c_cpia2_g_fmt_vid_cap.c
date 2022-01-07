
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int colorspace; int sizeimage; scalar_t__ bytesperline; int field; int pixelformat; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct camera_data {int frame_size; int pixelformat; int height; int width; } ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_g_fmt_vid_cap(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct camera_data *cam = video_drvdata(file);

 f->fmt.pix.width = cam->width;
 f->fmt.pix.height = cam->height;
 f->fmt.pix.pixelformat = cam->pixelformat;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.sizeimage = cam->frame_size;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_JPEG;

 return 0;
}
