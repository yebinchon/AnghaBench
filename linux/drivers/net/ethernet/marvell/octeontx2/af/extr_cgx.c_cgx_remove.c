
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cgx {int cgx_list; } ;


 int cgx_lmac_exit (struct cgx*) ;
 int list_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 struct cgx* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void cgx_remove(struct pci_dev *pdev)
{
 struct cgx *cgx = pci_get_drvdata(pdev);

 cgx_lmac_exit(cgx);
 list_del(&cgx->cgx_list);
 pci_free_irq_vectors(pdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
