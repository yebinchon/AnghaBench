
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {void* priv; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;

void *cxl_get_priv(struct cxl_context *ctx)
{
 if (!ctx)
  return ERR_PTR(-EINVAL);

 return ctx->priv;
}
