
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_adapter_image {int dummy; } ;
struct cxl {int slices; TYPE_1__* guest; int * afu; } ;
struct TYPE_2__ {int handle; } ;


 int DEVICE_SCOPE ;

 int EINVAL ;

 int cxl_guest_remove_afu (int ) ;
 int cxl_h_download_adapter_image ;
 int cxl_h_reset_adapter (int ) ;
 int cxl_h_validate_adapter_image ;
 int handle_image (struct cxl*,int,int *,struct cxl_adapter_image*) ;
 int pr_devel (char*) ;
 int transfer ;
 int update_devicetree (struct cxl*,int ) ;

__attribute__((used)) static int transfer_image(struct cxl *adapter, int operation,
   struct cxl_adapter_image *ai)
{
 int rc = 0;
 int afu;

 switch (operation) {
 case 129:
  rc = handle_image(adapter, operation,
    &cxl_h_download_adapter_image, ai);
  if (rc < 0) {
   pr_devel("resetting adapter\n");
   cxl_h_reset_adapter(adapter->guest->handle);
  }
  return rc;

 case 128:
  rc = handle_image(adapter, operation,
    &cxl_h_validate_adapter_image, ai);
  if (rc < 0) {
   pr_devel("resetting adapter\n");
   cxl_h_reset_adapter(adapter->guest->handle);
   return rc;
  }
  if (rc == 0) {
   pr_devel("remove current afu\n");
   for (afu = 0; afu < adapter->slices; afu++)
    cxl_guest_remove_afu(adapter->afu[afu]);

   pr_devel("resetting adapter\n");
   cxl_h_reset_adapter(adapter->guest->handle);
   rc = update_devicetree(adapter, DEVICE_SCOPE);
   transfer = 1;
  }
  return rc;
 }

 return -EINVAL;
}
