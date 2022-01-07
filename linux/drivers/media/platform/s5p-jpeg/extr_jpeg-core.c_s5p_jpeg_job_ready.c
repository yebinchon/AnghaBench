
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_jpeg_ctx {scalar_t__ mode; scalar_t__ state; int hdr_parsed; } ;


 scalar_t__ JPEGCTX_RESOLUTION_CHANGE ;
 scalar_t__ S5P_JPEG_DECODE ;

__attribute__((used)) static int s5p_jpeg_job_ready(void *priv)
{
 struct s5p_jpeg_ctx *ctx = priv;

 if (ctx->mode == S5P_JPEG_DECODE) {




  if (ctx->state == JPEGCTX_RESOLUTION_CHANGE)
   return 0;

  return ctx->hdr_parsed;
 }

 return 1;
}
