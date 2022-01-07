
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_vcodec_ctx {int drv_handle; TYPE_1__* dec_if; } ;
typedef enum vdec_get_param_type { ____Placeholder_vdec_get_param_type } vdec_get_param_type ;
struct TYPE_2__ {int (* get_param ) (int ,int,void*) ;} ;


 int EIO ;
 int mtk_vdec_lock (struct mtk_vcodec_ctx*) ;
 int mtk_vdec_unlock (struct mtk_vcodec_ctx*) ;
 int stub1 (int ,int,void*) ;

int vdec_if_get_param(struct mtk_vcodec_ctx *ctx, enum vdec_get_param_type type,
        void *out)
{
 int ret = 0;

 if (!ctx->drv_handle)
  return -EIO;

 mtk_vdec_lock(ctx);
 ret = ctx->dec_if->get_param(ctx->drv_handle, type, out);
 mtk_vdec_unlock(ctx);

 return ret;
}
