
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {void* priv; } ;


 int EINVAL ;

int cxl_set_priv(struct cxl_context *ctx, void *priv)
{
 if (!ctx)
  return -EINVAL;

 ctx->priv = priv;

 return 0;
}
