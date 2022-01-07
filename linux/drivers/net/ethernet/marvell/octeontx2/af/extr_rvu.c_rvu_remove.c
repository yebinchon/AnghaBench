
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {struct rvu* hw; int afpf_wq_info; } ;
struct pci_dev {int dev; } ;


 int devm_kfree (int *,struct rvu*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct rvu* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int rvu_cgx_exit (struct rvu*) ;
 int rvu_disable_sriov (struct rvu*) ;
 int rvu_flr_wq_destroy (struct rvu*) ;
 int rvu_free_hw_resources (struct rvu*) ;
 int rvu_mbox_destroy (int *) ;
 int rvu_reset_all_blocks (struct rvu*) ;
 int rvu_unregister_interrupts (struct rvu*) ;

__attribute__((used)) static void rvu_remove(struct pci_dev *pdev)
{
 struct rvu *rvu = pci_get_drvdata(pdev);

 rvu_unregister_interrupts(rvu);
 rvu_flr_wq_destroy(rvu);
 rvu_cgx_exit(rvu);
 rvu_mbox_destroy(&rvu->afpf_wq_info);
 rvu_disable_sriov(rvu);
 rvu_reset_all_blocks(rvu);
 rvu_free_hw_resources(rvu);

 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));

 devm_kfree(&pdev->dev, rvu->hw);
 devm_kfree(&pdev->dev, rvu);
}
