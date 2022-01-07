
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int vfs; int afvf_wq_info; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int TYPE_AFVF ;
 int dev_warn (int *,char*,...) ;
 int lbk_get_num_chans () ;
 int mb () ;
 int pci_enable_sriov (struct pci_dev*,int) ;
 int pci_sriov_get_totalvfs (struct pci_dev*) ;
 int rvu_afvf_mbox_handler ;
 int rvu_afvf_mbox_up_handler ;
 int rvu_afvf_msix_vectors_num_ok (struct rvu*) ;
 int rvu_disable_afvf_intr (struct rvu*) ;
 int rvu_enable_afvf_intr (struct rvu*) ;
 int rvu_mbox_destroy (int *) ;
 int rvu_mbox_init (struct rvu*,int *,int ,int,int ,int ) ;

__attribute__((used)) static int rvu_enable_sriov(struct rvu *rvu)
{
 struct pci_dev *pdev = rvu->pdev;
 int err, chans, vfs;

 if (!rvu_afvf_msix_vectors_num_ok(rvu)) {
  dev_warn(&pdev->dev,
    "Skipping SRIOV enablement since not enough IRQs are available\n");
  return 0;
 }

 chans = lbk_get_num_chans();
 if (chans < 0)
  return chans;

 vfs = pci_sriov_get_totalvfs(pdev);


 if (vfs > chans)
  vfs = chans;






 if (vfs & 0x1) {
  dev_warn(&pdev->dev,
    "Number of VFs should be even. Enabling %d out of %d.\n",
    vfs - 1, vfs);
  vfs--;
 }

 if (!vfs)
  return 0;





 rvu->vfs = vfs;

 err = rvu_mbox_init(rvu, &rvu->afvf_wq_info, TYPE_AFVF, vfs,
       rvu_afvf_mbox_handler, rvu_afvf_mbox_up_handler);
 if (err)
  return err;

 rvu_enable_afvf_intr(rvu);

 mb();

 err = pci_enable_sriov(pdev, vfs);
 if (err) {
  rvu_disable_afvf_intr(rvu);
  rvu_mbox_destroy(&rvu->afvf_wq_info);
  return err;
 }

 return 0;
}
