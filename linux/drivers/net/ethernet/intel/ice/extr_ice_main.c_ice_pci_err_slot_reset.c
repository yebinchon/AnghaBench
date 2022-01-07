
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct ice_pf {int hw; } ;
typedef int pci_ers_result_t ;


 int GLGEN_RTRIG ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 struct ice_pf* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;
 int rd32 (int *,int ) ;

__attribute__((used)) static pci_ers_result_t ice_pci_err_slot_reset(struct pci_dev *pdev)
{
 struct ice_pf *pf = pci_get_drvdata(pdev);
 pci_ers_result_t result;
 int err;
 u32 reg;

 err = pci_enable_device_mem(pdev);
 if (err) {
  dev_err(&pdev->dev,
   "Cannot re-enable PCI device after reset, error %d\n",
   err);
  result = PCI_ERS_RESULT_DISCONNECT;
 } else {
  pci_set_master(pdev);
  pci_restore_state(pdev);
  pci_save_state(pdev);
  pci_wake_from_d3(pdev, 0);


  reg = rd32(&pf->hw, GLGEN_RTRIG);
  if (!reg)
   result = PCI_ERS_RESULT_RECOVERED;
  else
   result = PCI_ERS_RESULT_DISCONNECT;
 }

 err = pci_cleanup_aer_uncorrect_error_status(pdev);
 if (err)
  dev_dbg(&pdev->dev,
   "pci_cleanup_aer_uncorrect_error_status failed, error %d\n",
   err);


 return result;
}
