
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_dev {int decode_workqueue; } ;
struct mtk_vcodec_ctx {int decode_work; struct mtk_vcodec_dev* dev; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void m2mops_vdec_device_run(void *priv)
{
 struct mtk_vcodec_ctx *ctx = priv;
 struct mtk_vcodec_dev *dev = ctx->dev;

 queue_work(dev->decode_workqueue, &ctx->decode_work);
}
