
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dev; } ;
struct hl_ctx {int asid; int refcount; } ;


 int dev_warn (int ,char*,int ) ;
 int hl_ctx_do_release ;
 int kref_put (int *,int ) ;

void hl_ctx_free(struct hl_device *hdev, struct hl_ctx *ctx)
{
 if (kref_put(&ctx->refcount, hl_ctx_do_release) == 1)
  return;

 dev_warn(hdev->dev,
  "Context %d closed or terminated but its CS are executing\n",
  ctx->asid);
}
