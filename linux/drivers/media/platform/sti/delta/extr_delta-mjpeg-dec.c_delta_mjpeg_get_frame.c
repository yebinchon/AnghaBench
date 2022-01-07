
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_mjpeg_ctx {struct delta_frame* out_frame; } ;
struct delta_frame {int dummy; } ;
struct delta_ctx {int dummy; } ;


 int ENODATA ;
 struct delta_mjpeg_ctx* to_ctx (struct delta_ctx*) ;

__attribute__((used)) static int delta_mjpeg_get_frame(struct delta_ctx *pctx,
     struct delta_frame **frame)
{
 struct delta_mjpeg_ctx *ctx = to_ctx(pctx);

 if (!ctx->out_frame)
  return -ENODATA;

 *frame = ctx->out_frame;

 ctx->out_frame = ((void*)0);

 return 0;
}
