
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_streaminfo {int dummy; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int flags; int decode_errors; int stream_errors; int dropped_frames; int output_frames; int decoded_frames; int name; struct delta_streaminfo streaminfo; struct delta_dev* dev; } ;
typedef int str ;


 int DELTA_FLAG_STREAMINFO ;
 int delta_streaminfo_str (struct delta_streaminfo*,unsigned char*,int) ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ) ;

void delta_trace_summary(struct delta_ctx *ctx)
{
 struct delta_dev *delta = ctx->dev;
 struct delta_streaminfo *s = &ctx->streaminfo;
 unsigned char str[100] = "";

 if (!(ctx->flags & DELTA_FLAG_STREAMINFO))
  return;

 dev_dbg(delta->dev, "%s %s, %d frames decoded, %d frames output, %d frames dropped, %d stream errors, %d decode errors",
  ctx->name,
  delta_streaminfo_str(s, str, sizeof(str)),
  ctx->decoded_frames,
  ctx->output_frames,
  ctx->dropped_frames,
  ctx->stream_errors,
  ctx->decode_errors);
}
