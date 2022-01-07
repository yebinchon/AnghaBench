
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v4l2_pix_format {scalar_t__ pixelformat; scalar_t__ width; scalar_t__ height; scalar_t__ sizeimage; scalar_t__ field; scalar_t__ bytesperline; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int private_data; } ;
struct delta_dev {int dev; } ;
struct delta_dec {scalar_t__ max_height; scalar_t__ max_width; } ;
struct TYPE_4__ {int pixelformat; } ;
struct delta_ctx {int name; TYPE_2__ frameinfo; struct delta_dev* dev; } ;


 scalar_t__ DELTA_MAX_HEIGHT ;
 scalar_t__ DELTA_MAX_WIDTH ;
 int DELTA_MIN_HEIGHT ;
 int DELTA_MIN_WIDTH ;
 int EINVAL ;
 scalar_t__ V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_NONE ;
 struct delta_dec* delta_find_decoder (struct delta_ctx*,scalar_t__,int ) ;
 int dev_dbg (int ,char*,int ,scalar_t__,...) ;
 scalar_t__ estimated_au_size (scalar_t__,scalar_t__) ;
 struct delta_ctx* to_ctx (int ) ;
 int v4l_bound_align_image (scalar_t__*,int ,scalar_t__,int ,scalar_t__*,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int delta_try_fmt_stream(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct delta_ctx *ctx = to_ctx(file->private_data);
 struct delta_dev *delta = ctx->dev;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 u32 streamformat = pix->pixelformat;
 const struct delta_dec *dec;
 u32 width, height;
 u32 au_size;

 dec = delta_find_decoder(ctx, streamformat, ctx->frameinfo.pixelformat);
 if (!dec) {
  dev_dbg(delta->dev,
   "%s V4L2 TRY_FMT (OUTPUT): unsupported format %4.4s\n",
   ctx->name, (char *)&pix->pixelformat);
  return -EINVAL;
 }


 width = pix->width;
 height = pix->height;
 v4l_bound_align_image
  (&pix->width,
   DELTA_MIN_WIDTH,
   dec->max_width ? dec->max_width : DELTA_MAX_WIDTH,
   0,
   &pix->height,
   DELTA_MIN_HEIGHT,
   dec->max_height ? dec->max_height : DELTA_MAX_HEIGHT,
   0, 0);

 if ((pix->width != width) || (pix->height != height))
  dev_dbg(delta->dev,
   "%s V4L2 TRY_FMT (OUTPUT): resolution updated %dx%d -> %dx%d to fit min/max/alignment\n",
   ctx->name, width, height,
   pix->width, pix->height);

 au_size = estimated_au_size(pix->width, pix->height);
 if (pix->sizeimage < au_size) {
  dev_dbg(delta->dev,
   "%s V4L2 TRY_FMT (OUTPUT): size updated %d -> %d to fit estimated size\n",
   ctx->name, pix->sizeimage, au_size);
  pix->sizeimage = au_size;
 }

 pix->bytesperline = 0;

 if (pix->field == V4L2_FIELD_ANY)
  pix->field = V4L2_FIELD_NONE;

 return 0;
}
