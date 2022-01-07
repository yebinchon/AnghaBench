
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_format {int format; int which; int pad; } ;
struct v4l2_pix_format {int width; int height; int pixelformat; int bytesperline; int sizeimage; int field; int colorspace; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cobalt_stream {int input; int sd; int pad_source; } ;


 int COBALT_BYTES_PER_PIXEL_RGB24 ;
 int COBALT_BYTES_PER_PIXEL_RGB32 ;
 int COBALT_BYTES_PER_PIXEL_YUYV ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;



 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 void* max (int,int) ;
 int pad ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,int *) ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_format*) ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_try_fmt_vid_cap(struct file *file, void *priv_fh,
  struct v4l2_format *f)
{
 struct cobalt_stream *s = video_drvdata(file);
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct v4l2_subdev_format sd_fmt;


 if ((pix->width < 176) || (pix->height < 144)) {
  pix->width = 176;
  pix->height = 144;
 }

 if ((pix->width > 1920) || (pix->height > 1080)) {
  pix->width = 1920;
  pix->height = 1080;
 }


 pix->width &= ~0x3;


 pix->height &= ~0x1;

 if (s->input == 1) {

  pix->width = 1920;
  pix->height = 1080;
  pix->colorspace = V4L2_COLORSPACE_SRGB;
 } else {
  sd_fmt.pad = s->pad_source;
  sd_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
  v4l2_subdev_call(s->sd, pad, get_fmt, ((void*)0), &sd_fmt);
  v4l2_fill_pix_format(pix, &sd_fmt.format);
 }

 switch (pix->pixelformat) {
 case 128:
 default:
  pix->bytesperline = max(pix->bytesperline & ~0x3,
    pix->width * COBALT_BYTES_PER_PIXEL_YUYV);
  pix->pixelformat = 128;
  break;
 case 129:
  pix->bytesperline = max(pix->bytesperline & ~0x3,
    pix->width * COBALT_BYTES_PER_PIXEL_RGB24);
  break;
 case 130:
  pix->bytesperline = max(pix->bytesperline & ~0x3,
    pix->width * COBALT_BYTES_PER_PIXEL_RGB32);
  break;
 }

 pix->sizeimage = pix->bytesperline * pix->height;
 pix->field = V4L2_FIELD_NONE;

 return 0;
}
