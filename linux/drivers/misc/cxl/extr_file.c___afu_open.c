
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mapping; int i_rdev; } ;
struct file {struct cxl_context* private_data; } ;
struct cxl_context {int pe; } ;
struct cxl_afu {int current_mode; } ;
struct cxl {int slices; int dev; int afu_list_lock; struct cxl_afu** afu; } ;
struct TYPE_2__ {int (* link_ok ) (struct cxl*,struct cxl_afu*) ;} ;


 int CXL_DEVT_ADAPTER (int ) ;
 int CXL_DEVT_AFU (int ) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int cxl_afu_get (struct cxl_afu*) ;
 int cxl_afu_put (struct cxl_afu*) ;
 struct cxl_context* cxl_context_alloc () ;
 int cxl_context_init (struct cxl_context*,struct cxl_afu*,int) ;
 int cxl_context_set_mapping (struct cxl_context*,int ) ;
 TYPE_1__* cxl_ops ;
 struct cxl* get_cxl_adapter (int) ;
 int pr_devel (char*,int,...) ;
 int put_device (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cxl*,struct cxl_afu*) ;

__attribute__((used)) static int __afu_open(struct inode *inode, struct file *file, bool master)
{
 struct cxl *adapter;
 struct cxl_afu *afu;
 struct cxl_context *ctx;
 int adapter_num = CXL_DEVT_ADAPTER(inode->i_rdev);
 int slice = CXL_DEVT_AFU(inode->i_rdev);
 int rc = -ENODEV;

 pr_devel("afu_open afu%i.%i\n", slice, adapter_num);

 if (!(adapter = get_cxl_adapter(adapter_num)))
  return -ENODEV;

 if (slice > adapter->slices)
  goto err_put_adapter;

 spin_lock(&adapter->afu_list_lock);
 if (!(afu = adapter->afu[slice])) {
  spin_unlock(&adapter->afu_list_lock);
  goto err_put_adapter;
 }






 cxl_afu_get(afu);
 spin_unlock(&adapter->afu_list_lock);

 if (!afu->current_mode)
  goto err_put_afu;

 if (!cxl_ops->link_ok(adapter, afu)) {
  rc = -EIO;
  goto err_put_afu;
 }

 if (!(ctx = cxl_context_alloc())) {
  rc = -ENOMEM;
  goto err_put_afu;
 }

 rc = cxl_context_init(ctx, afu, master);
 if (rc)
  goto err_put_afu;

 cxl_context_set_mapping(ctx, inode->i_mapping);

 pr_devel("afu_open pe: %i\n", ctx->pe);
 file->private_data = ctx;


 rc = 0;

err_put_afu:

 cxl_afu_put(afu);
err_put_adapter:
 put_device(&adapter->dev);
 return rc;
}
