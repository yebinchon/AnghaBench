
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct bnxt {int * ctx; int * edev; scalar_t__ sp_event; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int bnxt_cancel_sp_work (struct bnxt*) ;
 int bnxt_cleanup_pci (struct bnxt*) ;
 int bnxt_clear_int_mode (struct bnxt*) ;
 int bnxt_dcb_free (struct bnxt*) ;
 int bnxt_dl_unregister (struct bnxt*) ;
 int bnxt_ethtool_free (struct bnxt*) ;
 int bnxt_free_ctx_mem (struct bnxt*) ;
 int bnxt_free_hwrm_resources (struct bnxt*) ;
 int bnxt_free_hwrm_short_cmd_req (struct bnxt*) ;
 int bnxt_free_port_stats (struct bnxt*) ;
 int bnxt_hwrm_func_drv_unrgtr (struct bnxt*) ;
 int bnxt_shutdown_tc (struct bnxt*) ;
 int bnxt_sriov_disable (struct bnxt*) ;
 int free_netdev (struct net_device*) ;
 int kfree (int *) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void bnxt_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnxt *bp = netdev_priv(dev);

 if (BNXT_PF(bp)) {
  bnxt_sriov_disable(bp);
  bnxt_dl_unregister(bp);
 }

 pci_disable_pcie_error_reporting(pdev);
 unregister_netdev(dev);
 bnxt_shutdown_tc(bp);
 bnxt_cancel_sp_work(bp);
 bp->sp_event = 0;

 bnxt_clear_int_mode(bp);
 bnxt_hwrm_func_drv_unrgtr(bp);
 bnxt_free_hwrm_resources(bp);
 bnxt_free_hwrm_short_cmd_req(bp);
 bnxt_ethtool_free(bp);
 bnxt_dcb_free(bp);
 kfree(bp->edev);
 bp->edev = ((void*)0);
 bnxt_cleanup_pci(bp);
 bnxt_free_ctx_mem(bp);
 kfree(bp->ctx);
 bp->ctx = ((void*)0);
 bnxt_free_port_stats(bp);
 free_netdev(dev);
}
