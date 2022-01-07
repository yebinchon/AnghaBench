
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct mtk_vcodec_ctx {scalar_t__ state; } ;


 scalar_t__ MTK_STATE_FLUSH ;
 scalar_t__ MTK_STATE_HEADER ;
 struct mtk_vcodec_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int vb2ops_vdec_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct mtk_vcodec_ctx *ctx = vb2_get_drv_priv(q);

 if (ctx->state == MTK_STATE_FLUSH)
  ctx->state = MTK_STATE_HEADER;

 return 0;
}
