
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {int sizeimage; scalar_t__ bytesperline; int pixelformat; int field; int colorspace; int height; int width; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cx18_stream {int vb_bytes_per_frame; scalar_t__ vb_bytes_per_line; int pixelformat; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct TYPE_4__ {int height; int width; } ;
struct cx18 {TYPE_2__ cxhdl; struct cx18_stream* streams; } ;


 size_t CX18_ENC_STREAM_TYPE_YUV ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_MPEG ;
 struct cx18_open_id* fh2id (void*) ;

__attribute__((used)) static int cx18_g_fmt_vid_cap(struct file *file, void *fh,
    struct v4l2_format *fmt)
{
 struct cx18_open_id *id = fh2id(fh);
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[id->type];
 struct v4l2_pix_format *pixfmt = &fmt->fmt.pix;

 pixfmt->width = cx->cxhdl.width;
 pixfmt->height = cx->cxhdl.height;
 pixfmt->colorspace = V4L2_COLORSPACE_SMPTE170M;
 pixfmt->field = V4L2_FIELD_INTERLACED;
 if (id->type == CX18_ENC_STREAM_TYPE_YUV) {
  pixfmt->pixelformat = s->pixelformat;
  pixfmt->sizeimage = s->vb_bytes_per_frame;
  pixfmt->bytesperline = s->vb_bytes_per_line;
 } else {
  pixfmt->pixelformat = V4L2_PIX_FMT_MPEG;
  pixfmt->sizeimage = 128 * 1024;
  pixfmt->bytesperline = 0;
 }
 return 0;
}
