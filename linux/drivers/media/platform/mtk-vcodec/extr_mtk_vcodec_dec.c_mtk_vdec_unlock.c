
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_vcodec_ctx {TYPE_1__* dev; } ;
struct TYPE_2__ {int dec_mutex; } ;


 int mutex_unlock (int *) ;

void mtk_vdec_unlock(struct mtk_vcodec_ctx *ctx)
{
 mutex_unlock(&ctx->dev->dec_mutex);
}
