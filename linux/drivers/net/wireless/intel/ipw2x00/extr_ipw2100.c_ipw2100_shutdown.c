
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ipw2100_priv {int dummy; } ;


 int ipw2100_down (struct ipw2100_priv*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ipw2100_priv* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void ipw2100_shutdown(struct pci_dev *pci_dev)
{
 struct ipw2100_priv *priv = pci_get_drvdata(pci_dev);


 ipw2100_down(priv);

 pci_disable_device(pci_dev);
}
