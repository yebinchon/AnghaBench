
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_ctx {scalar_t__ state; } ;


 scalar_t__ MTK_JPEG_RUNNING ;

__attribute__((used)) static int mtk_jpeg_job_ready(void *priv)
{
 struct mtk_jpeg_ctx *ctx = priv;

 return (ctx->state == MTK_JPEG_RUNNING) ? 1 : 0;
}
