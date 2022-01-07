
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int pixelformat; int bytesperline; int height; int width; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cobalt_stream {int pixfmt; int bpp; int stride; int height; int width; int q; } ;


 int COBALT_BYTES_PER_PIXEL_RGB24 ;
 int COBALT_BYTES_PER_PIXEL_RGB32 ;
 int COBALT_BYTES_PER_PIXEL_YUYV ;
 int EBUSY ;
 int EINVAL ;



 int cobalt_enable_input (struct cobalt_stream*) ;
 scalar_t__ cobalt_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_s_fmt_vid_cap(struct file *file, void *priv_fh,
  struct v4l2_format *f)
{
 struct cobalt_stream *s = video_drvdata(file);
 struct v4l2_pix_format *pix = &f->fmt.pix;

 if (vb2_is_busy(&s->q))
  return -EBUSY;

 if (cobalt_try_fmt_vid_cap(file, priv_fh, f))
  return -EINVAL;

 s->width = pix->width;
 s->height = pix->height;
 s->stride = pix->bytesperline;
 switch (pix->pixelformat) {
 case 128:
  s->bpp = COBALT_BYTES_PER_PIXEL_YUYV;
  break;
 case 129:
  s->bpp = COBALT_BYTES_PER_PIXEL_RGB24;
  break;
 case 130:
  s->bpp = COBALT_BYTES_PER_PIXEL_RGB32;
  break;
 default:
  return -EINVAL;
 }
 s->pixfmt = pix->pixelformat;
 cobalt_enable_input(s);

 return 0;
}
