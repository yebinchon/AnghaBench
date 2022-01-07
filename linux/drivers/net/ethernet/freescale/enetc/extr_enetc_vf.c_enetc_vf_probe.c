
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct enetc_si {int * ndev; } ;
struct enetc_ndev_priv {int dummy; } ;


 int ENETC_MAX_NUM_TXQS ;
 int ENOMEM ;
 int KBUILD_MODNAME ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int dev_err (int *,char*) ;
 int enetc_alloc_msix (struct enetc_ndev_priv*) ;
 int enetc_alloc_si_resources (struct enetc_ndev_priv*) ;
 int enetc_drv_name ;
 int enetc_drv_ver ;
 int enetc_free_msix (struct enetc_ndev_priv*) ;
 int enetc_free_si_resources (struct enetc_ndev_priv*) ;
 int enetc_get_si_caps (struct enetc_si*) ;
 int enetc_init_si_rings_params (struct enetc_ndev_priv*) ;
 int enetc_ndev_ops ;
 int enetc_pci_probe (struct pci_dev*,int ,int ) ;
 int enetc_pci_remove (struct pci_dev*) ;
 int enetc_vf_netdev_setup (struct enetc_si*,struct net_device*,int *) ;
 int free_netdev (struct net_device*) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_info (struct enetc_ndev_priv*,int ,struct net_device*,char*,int ,int ) ;
 struct enetc_si* pci_get_drvdata (struct pci_dev*) ;
 int probe ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int enetc_vf_probe(struct pci_dev *pdev,
     const struct pci_device_id *ent)
{
 struct enetc_ndev_priv *priv;
 struct net_device *ndev;
 struct enetc_si *si;
 int err;

 err = enetc_pci_probe(pdev, KBUILD_MODNAME, 0);
 if (err) {
  dev_err(&pdev->dev, "PCI probing failed\n");
  return err;
 }

 si = pci_get_drvdata(pdev);

 enetc_get_si_caps(si);

 ndev = alloc_etherdev_mq(sizeof(*priv), ENETC_MAX_NUM_TXQS);
 if (!ndev) {
  err = -ENOMEM;
  dev_err(&pdev->dev, "netdev creation failed\n");
  goto err_alloc_netdev;
 }

 enetc_vf_netdev_setup(si, ndev, &enetc_ndev_ops);

 priv = netdev_priv(ndev);

 enetc_init_si_rings_params(priv);

 err = enetc_alloc_si_resources(priv);
 if (err) {
  dev_err(&pdev->dev, "SI resource alloc failed\n");
  goto err_alloc_si_res;
 }

 err = enetc_alloc_msix(priv);
 if (err) {
  dev_err(&pdev->dev, "MSIX alloc failed\n");
  goto err_alloc_msix;
 }

 err = register_netdev(ndev);
 if (err)
  goto err_reg_netdev;

 netif_carrier_off(ndev);

 netif_info(priv, probe, ndev, "%s v%s\n",
     enetc_drv_name, enetc_drv_ver);

 return 0;

err_reg_netdev:
 enetc_free_msix(priv);
err_alloc_msix:
 enetc_free_si_resources(priv);
err_alloc_si_res:
 si->ndev = ((void*)0);
 free_netdev(ndev);
err_alloc_netdev:
 enetc_pci_remove(pdev);

 return err;
}
