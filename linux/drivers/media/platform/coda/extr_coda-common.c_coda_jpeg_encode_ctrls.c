
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_ctx {int ctrls; } ;


 int V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 int V4L2_CID_JPEG_RESTART_INTERVAL ;
 int coda_ctrl_ops ;
 int v4l2_ctrl_new_std (int *,int *,int ,int,int,int,int) ;

__attribute__((used)) static void coda_jpeg_encode_ctrls(struct coda_ctx *ctx)
{
 v4l2_ctrl_new_std(&ctx->ctrls, &coda_ctrl_ops,
  V4L2_CID_JPEG_COMPRESSION_QUALITY, 5, 100, 1, 50);
 v4l2_ctrl_new_std(&ctx->ctrls, &coda_ctrl_ops,
  V4L2_CID_JPEG_RESTART_INTERVAL, 0, 100, 1, 0);
}
