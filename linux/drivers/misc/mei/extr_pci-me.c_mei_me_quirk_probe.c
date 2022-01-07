
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mei_cfg {scalar_t__ (* quirk_probe ) (struct pci_dev*) ;} ;


 int dev_info (int *,char*) ;
 scalar_t__ stub1 (struct pci_dev*) ;

__attribute__((used)) static bool mei_me_quirk_probe(struct pci_dev *pdev,
    const struct mei_cfg *cfg)
{
 if (cfg->quirk_probe && cfg->quirk_probe(pdev)) {
  dev_info(&pdev->dev, "Device doesn't have valid ME Interface\n");
  return 0;
 }

 return 1;
}
