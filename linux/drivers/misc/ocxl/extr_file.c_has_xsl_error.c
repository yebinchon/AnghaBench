
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct ocxl_context {int xsl_error_lock; TYPE_1__ xsl_error; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool has_xsl_error(struct ocxl_context *ctx)
{
 bool ret;

 mutex_lock(&ctx->xsl_error_lock);
 ret = !!ctx->xsl_error.addr;
 mutex_unlock(&ctx->xsl_error_lock);

 return ret;
}
