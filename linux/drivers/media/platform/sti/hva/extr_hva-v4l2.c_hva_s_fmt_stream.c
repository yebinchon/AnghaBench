
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_7__ {int pixelformat; int height; int width; int sizeimage; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; int type; } ;
struct TYPE_6__ {int streamformat; int height; int width; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct hva_ctx {int flags; TYPE_2__ streaminfo; int max_stream_size; int name; TYPE_1__ fh; } ;
struct file {int private_data; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int HVA_FLAG_STREAMINFO ;
 struct device* ctx_to_dev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,...) ;
 struct hva_ctx* fh_to_ctx (int ) ;
 int hva_try_fmt_stream (struct file*,void*,struct v4l2_format*) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_streaming (struct vb2_queue*) ;

__attribute__((used)) static int hva_s_fmt_stream(struct file *file, void *fh, struct v4l2_format *f)
{
 struct hva_ctx *ctx = fh_to_ctx(file->private_data);
 struct device *dev = ctx_to_dev(ctx);
 struct vb2_queue *vq;
 int ret;

 ret = hva_try_fmt_stream(file, fh, f);
 if (ret) {
  dev_dbg(dev, "%s V4L2 S_FMT (CAPTURE): unsupported format %.4s\n",
   ctx->name, (char *)&f->fmt.pix.pixelformat);
  return ret;
 }

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (vb2_is_streaming(vq)) {
  dev_dbg(dev, "%s V4L2 S_FMT (CAPTURE): queue busy\n",
   ctx->name);
  return -EBUSY;
 }

 ctx->max_stream_size = f->fmt.pix.sizeimage;
 ctx->streaminfo.width = f->fmt.pix.width;
 ctx->streaminfo.height = f->fmt.pix.height;
 ctx->streaminfo.streamformat = f->fmt.pix.pixelformat;
 ctx->flags |= HVA_FLAG_STREAMINFO;

 return 0;
}
