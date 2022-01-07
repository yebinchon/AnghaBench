
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_count; struct platform_info* ksz_switch; scalar_t__ io; } ;
struct dev_info {int pdev; TYPE_1__ hw; } ;
struct platform_info {scalar_t__* netdev; struct dev_info dev_info; } ;
struct pci_dev {int dummy; } ;


 int iounmap (scalar_t__) ;
 int kfree (struct platform_info*) ;
 int ksz_free_mem (struct dev_info*) ;
 int netdev_free (scalar_t__) ;
 int pci_dev_put (int ) ;
 struct platform_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void pcidev_exit(struct pci_dev *pdev)
{
 int i;
 struct platform_info *info = pci_get_drvdata(pdev);
 struct dev_info *hw_priv = &info->dev_info;

 release_mem_region(pci_resource_start(pdev, 0),
  pci_resource_len(pdev, 0));
 for (i = 0; i < hw_priv->hw.dev_count; i++) {
  if (info->netdev[i])
   netdev_free(info->netdev[i]);
 }
 if (hw_priv->hw.io)
  iounmap(hw_priv->hw.io);
 ksz_free_mem(hw_priv);
 kfree(hw_priv->hw.ksz_switch);
 pci_dev_put(hw_priv->pdev);
 kfree(info);
}
