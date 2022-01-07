
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_dev {int enc_mutex; } ;
struct mtk_vcodec_ctx {struct mtk_vcodec_dev* dev; } ;


 int mutex_lock (int *) ;

int mtk_venc_lock(struct mtk_vcodec_ctx *ctx)
{
 struct mtk_vcodec_dev *dev = ctx->dev;

 mutex_lock(&dev->enc_mutex);
 return 0;
}
