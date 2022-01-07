
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ipw_priv {int dummy; } ;


 int ipw_down (struct ipw_priv*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ipw_priv* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void ipw_pci_shutdown(struct pci_dev *pdev)
{
 struct ipw_priv *priv = pci_get_drvdata(pdev);


 ipw_down(priv);

 pci_disable_device(pdev);
}
