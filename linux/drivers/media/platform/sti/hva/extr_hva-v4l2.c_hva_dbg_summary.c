
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_streaminfo {int level; int profile; int height; int width; int streamformat; } ;
struct hva_frameinfo {int aligned_height; int aligned_width; int pixelformat; } ;
struct hva_ctx {int flags; int frame_errors; int encode_errors; int sys_errors; int encoded_frames; int name; struct hva_frameinfo frameinfo; struct hva_streaminfo streaminfo; } ;
struct device {int dummy; } ;


 int HVA_FLAG_STREAMINFO ;
 struct device* ctx_to_dev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,char*,int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void hva_dbg_summary(struct hva_ctx *ctx)
{
 struct device *dev = ctx_to_dev(ctx);
 struct hva_streaminfo *stream = &ctx->streaminfo;
 struct hva_frameinfo *frame = &ctx->frameinfo;

 if (!(ctx->flags & HVA_FLAG_STREAMINFO))
  return;

 dev_dbg(dev, "%s %4.4s %dx%d > %4.4s %dx%d %s %s: %d frames encoded, %d system errors, %d encoding errors, %d frame errors\n",
  ctx->name,
  (char *)&frame->pixelformat,
  frame->aligned_width, frame->aligned_height,
  (char *)&stream->streamformat,
  stream->width, stream->height,
  stream->profile, stream->level,
  ctx->encoded_frames,
  ctx->sys_errors,
  ctx->encode_errors,
  ctx->frame_errors);
}
