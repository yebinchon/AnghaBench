
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {int dummy; } ;
struct cxl {int slices; int afu_list_lock; struct cxl_afu** afu; TYPE_1__* guest; } ;
struct TYPE_2__ {int handle; } ;


 int CXL_ERROR_DETECTED_EVENT ;
 int CXL_RESUME_EVENT ;
 int CXL_SLOT_RESET_EVENT ;
 int cxl_context_detach_all (struct cxl_afu*) ;
 int cxl_h_reset_adapter (int ) ;
 int pci_channel_io_frozen ;
 int pci_channel_io_normal ;
 int pci_error_handlers (struct cxl_afu*,int ,int ) ;
 int pr_devel (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int guest_reset(struct cxl *adapter)
{
 struct cxl_afu *afu = ((void*)0);
 int i, rc;

 pr_devel("Adapter reset request\n");
 spin_lock(&adapter->afu_list_lock);
 for (i = 0; i < adapter->slices; i++) {
  if ((afu = adapter->afu[i])) {
   pci_error_handlers(afu, CXL_ERROR_DETECTED_EVENT,
     pci_channel_io_frozen);
   cxl_context_detach_all(afu);
  }
 }

 rc = cxl_h_reset_adapter(adapter->guest->handle);
 for (i = 0; i < adapter->slices; i++) {
  if (!rc && (afu = adapter->afu[i])) {
   pci_error_handlers(afu, CXL_SLOT_RESET_EVENT,
     pci_channel_io_normal);
   pci_error_handlers(afu, CXL_RESUME_EVENT, 0);
  }
 }
 spin_unlock(&adapter->afu_list_lock);
 return rc;
}
