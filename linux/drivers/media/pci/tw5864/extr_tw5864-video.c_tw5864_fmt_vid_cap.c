
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int colorspace; int sizeimage; int pixelformat; int field; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct tw5864_input {int std; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int H264_VLC_BUF_SIZE ;



 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_H264 ;
 int WARN_ON_ONCE (int) ;
 struct tw5864_input* video_drvdata (struct file*) ;

__attribute__((used)) static int tw5864_fmt_vid_cap(struct file *file, void *priv,
         struct v4l2_format *f)
{
 struct tw5864_input *input = video_drvdata(file);

 f->fmt.pix.width = 704;
 switch (input->std) {
 default:
  WARN_ON_ONCE(1);
  return -EINVAL;
 case 130:
  f->fmt.pix.height = 480;
  break;
 case 129:
 case 128:
  f->fmt.pix.height = 576;
  break;
 }
 f->fmt.pix.field = V4L2_FIELD_INTERLACED;
 f->fmt.pix.pixelformat = V4L2_PIX_FMT_H264;
 f->fmt.pix.sizeimage = H264_VLC_BUF_SIZE;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 return 0;
}
