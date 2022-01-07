
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct bgx {scalar_t__ lmac_count; size_t bgx_id; } ;


 int bgx_lmac_disable (struct bgx*,scalar_t__) ;
 int ** bgx_vnic ;
 int pci_disable_device (struct pci_dev*) ;
 struct bgx* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void bgx_remove(struct pci_dev *pdev)
{
 struct bgx *bgx = pci_get_drvdata(pdev);
 u8 lmac;


 for (lmac = 0; lmac < bgx->lmac_count; lmac++)
  bgx_lmac_disable(bgx, lmac);

 bgx_vnic[bgx->bgx_id] = ((void*)0);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
