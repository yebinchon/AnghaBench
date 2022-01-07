
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct alcor_pci_priv {int id; } ;


 int alcor_pci_aspm_ctrl (struct alcor_pci_priv*,int) ;
 int alcor_pci_idr ;
 int ida_simple_remove (int *,int ) ;
 int mfd_remove_devices (int *) ;
 struct alcor_pci_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void alcor_pci_remove(struct pci_dev *pdev)
{
 struct alcor_pci_priv *priv;

 priv = pci_get_drvdata(pdev);

 alcor_pci_aspm_ctrl(priv, 1);

 mfd_remove_devices(&pdev->dev);

 ida_simple_remove(&alcor_pci_idr, priv->id);

 pci_release_regions(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
