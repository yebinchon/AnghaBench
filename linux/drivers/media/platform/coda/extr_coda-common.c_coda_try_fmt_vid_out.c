
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ colorspace; int pixelformat; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct coda_q_data {int fourcc; } ;
struct coda_dev {int dummy; } ;
struct coda_ctx {struct coda_dev* dev; } ;
struct coda_codec {int dummy; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_COLORSPACE_DEFAULT ;
 struct coda_codec* coda_find_codec (struct coda_dev*,int ,int ) ;
 int coda_set_default_colorspace (TYPE_2__*) ;
 int coda_try_fmt (struct coda_ctx*,struct coda_codec const*,struct v4l2_format*) ;
 int coda_try_pixelformat (struct coda_ctx*,struct v4l2_format*) ;
 struct coda_ctx* fh_to_ctx (void*) ;
 struct coda_q_data* get_q_data (struct coda_ctx*,int ) ;

__attribute__((used)) static int coda_try_fmt_vid_out(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct coda_ctx *ctx = fh_to_ctx(priv);
 struct coda_dev *dev = ctx->dev;
 const struct coda_q_data *q_data_dst;
 const struct coda_codec *codec;
 int ret;

 ret = coda_try_pixelformat(ctx, f);
 if (ret < 0)
  return ret;

 if (f->fmt.pix.colorspace == V4L2_COLORSPACE_DEFAULT)
  coda_set_default_colorspace(&f->fmt.pix);

 q_data_dst = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
 codec = coda_find_codec(dev, f->fmt.pix.pixelformat, q_data_dst->fourcc);

 return coda_try_fmt(ctx, codec, f);
}
