
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct ocxl_context {int status; int pasid; TYPE_4__* afu; int status_mutex; } ;
typedef enum ocxl_context_status { ____Placeholder_ocxl_context_status } ocxl_context_status ;
struct TYPE_6__ {int dvsec_afu_control_pos; } ;
struct TYPE_8__ {TYPE_3__* fn; int afu_control_lock; TYPE_2__ config; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_7__ {int link; TYPE_1__ dev; } ;


 int ATTACHED ;
 int CLOSED ;
 int EBUSY ;
 int dev_warn (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocxl_config_terminate_pasid (struct pci_dev*,int,int ) ;
 int ocxl_link_remove_pe (int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;
 int trace_ocxl_terminate_pasid (int ,int) ;

int ocxl_context_detach(struct ocxl_context *ctx)
{
 struct pci_dev *dev;
 int afu_control_pos;
 enum ocxl_context_status status;
 int rc;

 mutex_lock(&ctx->status_mutex);
 status = ctx->status;
 ctx->status = CLOSED;
 mutex_unlock(&ctx->status_mutex);
 if (status != ATTACHED)
  return 0;

 dev = to_pci_dev(ctx->afu->fn->dev.parent);
 afu_control_pos = ctx->afu->config.dvsec_afu_control_pos;

 mutex_lock(&ctx->afu->afu_control_lock);
 rc = ocxl_config_terminate_pasid(dev, afu_control_pos, ctx->pasid);
 mutex_unlock(&ctx->afu->afu_control_lock);
 trace_ocxl_terminate_pasid(ctx->pasid, rc);
 if (rc) {
  if (rc == -EBUSY)
   return rc;
 }
 rc = ocxl_link_remove_pe(ctx->afu->fn->link, ctx->pasid);
 if (rc) {
  dev_warn(&dev->dev,
   "Couldn't remove PE entry cleanly: %d\n", rc);
 }
 return 0;
}
