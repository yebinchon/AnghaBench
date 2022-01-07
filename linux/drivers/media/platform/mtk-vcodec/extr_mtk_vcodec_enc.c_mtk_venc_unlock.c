
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_dev {int enc_mutex; } ;
struct mtk_vcodec_ctx {struct mtk_vcodec_dev* dev; } ;


 int mutex_unlock (int *) ;

int mtk_venc_unlock(struct mtk_vcodec_ctx *ctx)
{
 struct mtk_vcodec_dev *dev = ctx->dev;

 mutex_unlock(&dev->enc_mutex);
 return 0;
}
