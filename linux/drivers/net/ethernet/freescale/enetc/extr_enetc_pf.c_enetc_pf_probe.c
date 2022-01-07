
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int global; int port; } ;
struct enetc_si {int * ndev; TYPE_1__ hw; } ;
struct enetc_pf {int total_vfs; struct enetc_si* si; } ;
struct enetc_ndev_priv {int dummy; } ;


 int ENETC_MAX_NUM_TXQS ;
 int ENODEV ;
 int ENOMEM ;
 int KBUILD_MODNAME ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*) ;
 int dev_warn (TYPE_2__*,char*) ;
 int enetc_alloc_msix (struct enetc_ndev_priv*) ;
 int enetc_alloc_si_resources (struct enetc_ndev_priv*) ;
 int enetc_configure_port (struct enetc_pf*) ;
 int enetc_drv_name ;
 int enetc_drv_ver ;
 int enetc_free_msix (struct enetc_ndev_priv*) ;
 int enetc_free_si_resources (struct enetc_ndev_priv*) ;
 int enetc_get_si_caps (struct enetc_si*) ;
 int enetc_init_si_rings_params (struct enetc_ndev_priv*) ;
 int enetc_ndev_ops ;
 int enetc_of_get_phy (struct enetc_ndev_priv*) ;
 int enetc_of_put_phy (struct enetc_ndev_priv*) ;
 int enetc_pci_probe (struct pci_dev*,int ,int) ;
 int enetc_pci_remove (struct pci_dev*) ;
 int enetc_pf_netdev_setup (struct enetc_si*,struct net_device*,int *) ;
 struct enetc_pf* enetc_si_priv (struct enetc_si*) ;
 int free_netdev (struct net_device*) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_info (struct enetc_ndev_priv*,int ,struct net_device*,char*,int ,int ) ;
 int of_device_is_available (scalar_t__) ;
 struct enetc_si* pci_get_drvdata (struct pci_dev*) ;
 int pci_sriov_get_totalvfs (struct pci_dev*) ;
 int probe ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int enetc_pf_probe(struct pci_dev *pdev,
     const struct pci_device_id *ent)
{
 struct enetc_ndev_priv *priv;
 struct net_device *ndev;
 struct enetc_si *si;
 struct enetc_pf *pf;
 int err;

 if (pdev->dev.of_node && !of_device_is_available(pdev->dev.of_node)) {
  dev_info(&pdev->dev, "device is disabled, skipping\n");
  return -ENODEV;
 }

 err = enetc_pci_probe(pdev, KBUILD_MODNAME, sizeof(*pf));
 if (err) {
  dev_err(&pdev->dev, "PCI probing failed\n");
  return err;
 }

 si = pci_get_drvdata(pdev);
 if (!si->hw.port || !si->hw.global) {
  err = -ENODEV;
  dev_err(&pdev->dev, "could not map PF space, probing a VF?\n");
  goto err_map_pf_space;
 }

 pf = enetc_si_priv(si);
 pf->si = si;
 pf->total_vfs = pci_sriov_get_totalvfs(pdev);

 enetc_configure_port(pf);

 enetc_get_si_caps(si);

 ndev = alloc_etherdev_mq(sizeof(*priv), ENETC_MAX_NUM_TXQS);
 if (!ndev) {
  err = -ENOMEM;
  dev_err(&pdev->dev, "netdev creation failed\n");
  goto err_alloc_netdev;
 }

 enetc_pf_netdev_setup(si, ndev, &enetc_ndev_ops);

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

 err = enetc_of_get_phy(priv);
 if (err)
  dev_warn(&pdev->dev, "Fallback to PHY-less operation\n");

 err = register_netdev(ndev);
 if (err)
  goto err_reg_netdev;

 netif_carrier_off(ndev);

 netif_info(priv, probe, ndev, "%s v%s\n",
     enetc_drv_name, enetc_drv_ver);

 return 0;

err_reg_netdev:
 enetc_of_put_phy(priv);
 enetc_free_msix(priv);
err_alloc_msix:
 enetc_free_si_resources(priv);
err_alloc_si_res:
 si->ndev = ((void*)0);
 free_netdev(ndev);
err_alloc_netdev:
err_map_pf_space:
 enetc_pci_remove(pdev);

 return err;
}
