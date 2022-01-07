
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_2__ {int count; void* dsisr; void* addr; } ;
struct ocxl_context {int events_wq; int xsl_error_lock; TYPE_1__ xsl_error; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void xsl_fault_error(void *data, u64 addr, u64 dsisr)
{
 struct ocxl_context *ctx = (struct ocxl_context *) data;

 mutex_lock(&ctx->xsl_error_lock);
 ctx->xsl_error.addr = addr;
 ctx->xsl_error.dsisr = dsisr;
 ctx->xsl_error.count++;
 mutex_unlock(&ctx->xsl_error_lock);

 wake_up_all(&ctx->events_wq);
}
