
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct genwqe_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dev_err (int *,char*,int) ;
 struct genwqe_dev* dev_get_drvdata (int *) ;
 int genwqe_pci_setup (struct genwqe_dev*) ;

__attribute__((used)) static pci_ers_result_t genwqe_err_slot_reset(struct pci_dev *pci_dev)
{
 int rc;
 struct genwqe_dev *cd = dev_get_drvdata(&pci_dev->dev);

 rc = genwqe_pci_setup(cd);
 if (!rc) {
  return PCI_ERS_RESULT_RECOVERED;
 } else {
  dev_err(&pci_dev->dev,
   "err: problems with PCI setup (err=%d)\n", rc);
  return PCI_ERS_RESULT_DISCONNECT;
 }
}
