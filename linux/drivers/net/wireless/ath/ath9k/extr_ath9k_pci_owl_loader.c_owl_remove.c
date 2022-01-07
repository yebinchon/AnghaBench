
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct owl_ctx {int eeprom_load; } ;


 struct owl_ctx* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void owl_remove(struct pci_dev *pdev)
{
 struct owl_ctx *ctx = pci_get_drvdata(pdev);

 if (ctx) {
  wait_for_completion(&ctx->eeprom_load);
  pci_set_drvdata(pdev, ((void*)0));
 }
}
