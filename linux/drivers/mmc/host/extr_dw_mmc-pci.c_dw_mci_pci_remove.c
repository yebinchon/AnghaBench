
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dw_mci {int dummy; } ;


 int dw_mci_remove (struct dw_mci*) ;
 struct dw_mci* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void dw_mci_pci_remove(struct pci_dev *pdev)
{
 struct dw_mci *host = pci_get_drvdata(pdev);

 dw_mci_remove(host);
}
