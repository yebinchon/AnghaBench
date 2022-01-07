
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct cxl_afu {int current_mode; } ;
struct cxl {int slices; int contexts_num; int dev; int afu_list_lock; struct cxl_afu** afu; int perst_same_image; scalar_t__ perst_loads_image; } ;
typedef scalar_t__ pci_ers_result_t ;
typedef int pci_channel_state_t ;
struct TYPE_2__ {int (* afu_deactivate_mode ) (struct cxl_afu*,int ) ;} ;


 scalar_t__ PCI_ERS_RESULT_DISCONNECT ;
 scalar_t__ PCI_ERS_RESULT_NEED_RESET ;
 scalar_t__ PCI_ERS_RESULT_NONE ;
 int atomic_read (int *) ;
 scalar_t__ cxl_adapter_context_lock (struct cxl*) ;
 int cxl_context_detach_all (struct cxl_afu*) ;
 int cxl_deconfigure_adapter (struct cxl*) ;
 TYPE_1__* cxl_ops ;
 scalar_t__ cxl_vphb_error_detected (struct cxl_afu*,int ) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 int pci_channel_io_perm_failure ;
 int pci_deconfigure_afu (struct cxl_afu*) ;
 struct cxl* pci_get_drvdata (struct pci_dev*) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cxl_afu*,int ) ;

__attribute__((used)) static pci_ers_result_t cxl_pci_error_detected(struct pci_dev *pdev,
            pci_channel_state_t state)
{
 struct cxl *adapter = pci_get_drvdata(pdev);
 struct cxl_afu *afu;
 pci_ers_result_t result = PCI_ERS_RESULT_NEED_RESET;
 pci_ers_result_t afu_result = PCI_ERS_RESULT_NEED_RESET;
 int i;





 schedule();


 if (state == pci_channel_io_perm_failure) {
  spin_lock(&adapter->afu_list_lock);
  for (i = 0; i < adapter->slices; i++) {
   afu = adapter->afu[i];




   cxl_vphb_error_detected(afu, state);
  }
  spin_unlock(&adapter->afu_list_lock);
  return PCI_ERS_RESULT_DISCONNECT;
 }
 if (adapter->perst_loads_image && !adapter->perst_same_image) {

  dev_info(&pdev->dev, "reflashing, so opting out of EEH!\n");
  return PCI_ERS_RESULT_NONE;
 }
 spin_lock(&adapter->afu_list_lock);

 for (i = 0; i < adapter->slices; i++) {
  afu = adapter->afu[i];

  if (afu == ((void*)0))
   continue;

  afu_result = cxl_vphb_error_detected(afu, state);
  cxl_context_detach_all(afu);
  cxl_ops->afu_deactivate_mode(afu, afu->current_mode);
  pci_deconfigure_afu(afu);


  if (afu_result == PCI_ERS_RESULT_DISCONNECT)
   result = PCI_ERS_RESULT_DISCONNECT;
  else if ((afu_result == PCI_ERS_RESULT_NONE) &&
    (result == PCI_ERS_RESULT_NEED_RESET))
   result = PCI_ERS_RESULT_NONE;
 }
 spin_unlock(&adapter->afu_list_lock);


 if (cxl_adapter_context_lock(adapter) != 0)
  dev_warn(&adapter->dev,
    "Couldn't take context lock with %d active-contexts\n",
    atomic_read(&adapter->contexts_num));

 cxl_deconfigure_adapter(adapter);

 return result;
}
