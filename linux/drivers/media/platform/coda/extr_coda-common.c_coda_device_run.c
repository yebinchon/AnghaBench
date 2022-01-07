
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_dev {int workqueue; } ;
struct coda_ctx {int pic_run_work; struct coda_dev* dev; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void coda_device_run(void *m2m_priv)
{
 struct coda_ctx *ctx = m2m_priv;
 struct coda_dev *dev = ctx->dev;

 queue_work(dev->workqueue, &ctx->pic_run_work);
}
