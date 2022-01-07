
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_ctx_mgr {int ctx_lock; int ctx_handles; } ;
struct hl_fpriv {struct hl_ctx* ctx; struct hl_ctx_mgr ctx_mgr; } ;
struct hl_device {struct hl_ctx* compute_ctx; int dev; } ;
struct hl_ctx {int handle; struct hl_fpriv* hpriv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int hl_ctx_init (struct hl_device*,struct hl_ctx*,int) ;
 int hl_hpriv_get (struct hl_fpriv*) ;
 int idr_alloc (int *,struct hl_ctx*,int,int ,int ) ;
 int idr_remove (int *,int) ;
 int kfree (struct hl_ctx*) ;
 struct hl_ctx* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hl_ctx_create(struct hl_device *hdev, struct hl_fpriv *hpriv)
{
 struct hl_ctx_mgr *mgr = &hpriv->ctx_mgr;
 struct hl_ctx *ctx;
 int rc;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  rc = -ENOMEM;
  goto out_err;
 }

 mutex_lock(&mgr->ctx_lock);
 rc = idr_alloc(&mgr->ctx_handles, ctx, 1, 0, GFP_KERNEL);
 mutex_unlock(&mgr->ctx_lock);

 if (rc < 0) {
  dev_err(hdev->dev, "Failed to allocate IDR for a new CTX\n");
  goto free_ctx;
 }

 ctx->handle = rc;

 rc = hl_ctx_init(hdev, ctx, 0);
 if (rc)
  goto remove_from_idr;

 hl_hpriv_get(hpriv);
 ctx->hpriv = hpriv;


 hpriv->ctx = ctx;


 hdev->compute_ctx = ctx;

 return 0;

remove_from_idr:
 mutex_lock(&mgr->ctx_lock);
 idr_remove(&mgr->ctx_handles, ctx->handle);
 mutex_unlock(&mgr->ctx_lock);
free_ctx:
 kfree(ctx);
out_err:
 return rc;
}
