
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cxl_ctx; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct cxl_context {scalar_t__ status; } ;


 scalar_t__ STARTED ;
 struct cxl_context* cxl_get_context (struct pci_dev*) ;
 int cxl_release_context (struct cxl_context*) ;
 int dev_err (TYPE_2__*,char*) ;

__attribute__((used)) static void cxl_pci_disable_device(struct pci_dev *dev)
{
 struct cxl_context *ctx = cxl_get_context(dev);

 if (ctx) {
  if (ctx->status == STARTED) {
   dev_err(&dev->dev, "Default context started\n");
   return;
  }
  dev->dev.archdata.cxl_ctx = ((void*)0);
  cxl_release_context(ctx);
 }
}
