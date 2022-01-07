
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;
struct hl_ctx {int refcount; } ;


 int kref_get (int *) ;

void hl_ctx_get(struct hl_device *hdev, struct hl_ctx *ctx)
{
 kref_get(&ctx->refcount);
}
