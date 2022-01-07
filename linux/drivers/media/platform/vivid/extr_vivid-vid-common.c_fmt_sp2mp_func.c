
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_plane_pix_format {int bytesperline; int sizeimage; } ;
struct v4l2_pix_format_mplane {int flags; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int pixelformat; int height; int width; struct v4l2_plane_pix_format* plane_fmt; } ;
struct v4l2_pix_format {int flags; int bytesperline; int sizeimage; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int pixelformat; int height; int width; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
typedef int (* fmtfunc ) (struct file*,void*,struct v4l2_format*) ;


 int fmt_sp2mp (struct v4l2_format*,struct v4l2_format*) ;

int fmt_sp2mp_func(struct file *file, void *priv,
  struct v4l2_format *f, fmtfunc func)
{
 struct v4l2_format fmt;
 struct v4l2_pix_format_mplane *mp = &fmt.fmt.pix_mp;
 struct v4l2_plane_pix_format *ppix = &mp->plane_fmt[0];
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int ret;


 fmt_sp2mp(f, &fmt);

 ret = func(file, priv, &fmt);

 pix->width = mp->width;
 pix->height = mp->height;
 pix->pixelformat = mp->pixelformat;
 pix->field = mp->field;
 pix->colorspace = mp->colorspace;
 pix->xfer_func = mp->xfer_func;

 pix->ycbcr_enc = mp->ycbcr_enc;
 pix->quantization = mp->quantization;
 pix->sizeimage = ppix->sizeimage;
 pix->bytesperline = ppix->bytesperline;
 pix->flags = mp->flags;
 return ret;
}
