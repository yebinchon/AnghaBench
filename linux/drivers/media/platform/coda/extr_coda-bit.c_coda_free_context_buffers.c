
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coda_dev {TYPE_1__* devtype; } ;
struct coda_ctx {int parabuf; int workbuf; int psbuf; int slicebuf; struct coda_dev* dev; } ;
struct TYPE_2__ {scalar_t__ product; } ;


 scalar_t__ CODA_DX6 ;
 int coda_free_aux_buf (struct coda_dev*,int *) ;

__attribute__((used)) static void coda_free_context_buffers(struct coda_ctx *ctx)
{
 struct coda_dev *dev = ctx->dev;

 coda_free_aux_buf(dev, &ctx->slicebuf);
 coda_free_aux_buf(dev, &ctx->psbuf);
 if (dev->devtype->product != CODA_DX6)
  coda_free_aux_buf(dev, &ctx->workbuf);
 coda_free_aux_buf(dev, &ctx->parabuf);
}
