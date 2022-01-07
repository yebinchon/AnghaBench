
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct enetc_si {int ndev; } ;
struct enetc_ndev_priv {int dummy; } ;


 int drv ;
 int enetc_drv_name ;
 int enetc_drv_ver ;
 int enetc_free_msix (struct enetc_ndev_priv*) ;
 int enetc_free_si_resources (struct enetc_ndev_priv*) ;
 int enetc_pci_remove (struct pci_dev*) ;
 int free_netdev (int ) ;
 struct enetc_ndev_priv* netdev_priv (int ) ;
 int netif_info (struct enetc_ndev_priv*,int ,int ,char*,int ,int ) ;
 struct enetc_si* pci_get_drvdata (struct pci_dev*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void enetc_vf_remove(struct pci_dev *pdev)
{
 struct enetc_si *si = pci_get_drvdata(pdev);
 struct enetc_ndev_priv *priv;

 priv = netdev_priv(si->ndev);
 netif_info(priv, drv, si->ndev, "%s v%s remove\n",
     enetc_drv_name, enetc_drv_ver);
 unregister_netdev(si->ndev);

 enetc_free_msix(priv);

 enetc_free_si_resources(priv);

 free_netdev(si->ndev);

 enetc_pci_remove(pdev);
}
