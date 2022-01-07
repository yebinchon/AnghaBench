
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {scalar_t__ status; } ;


 int EBUSY ;
 scalar_t__ STARTED ;
 int cxl_context_free (struct cxl_context*) ;

int cxl_release_context(struct cxl_context *ctx)
{
 if (ctx->status >= STARTED)
  return -EBUSY;

 cxl_context_free(ctx);

 return 0;
}
