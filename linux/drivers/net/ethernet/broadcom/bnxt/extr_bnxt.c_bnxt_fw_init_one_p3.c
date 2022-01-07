
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt {int flags; int wol; struct pci_dev* pdev; } ;


 int BNXT_FLAG_WOL_CAP ;
 int bnxt_get_wol_settings (struct bnxt*) ;
 int bnxt_hwrm_coal_params_qcaps (struct bnxt*) ;
 int bnxt_hwrm_set_cache_line_size (struct bnxt*,int ) ;
 int bnxt_set_dflt_rfs (struct bnxt*) ;
 int bnxt_set_dflt_rss_hash_type (struct bnxt*) ;
 int cache_line_size () ;
 int device_set_wakeup_capable (int *,int) ;
 int device_set_wakeup_enable (int *,int ) ;

__attribute__((used)) static void bnxt_fw_init_one_p3(struct bnxt *bp)
{
 struct pci_dev *pdev = bp->pdev;

 bnxt_set_dflt_rss_hash_type(bp);
 bnxt_set_dflt_rfs(bp);

 bnxt_get_wol_settings(bp);
 if (bp->flags & BNXT_FLAG_WOL_CAP)
  device_set_wakeup_enable(&pdev->dev, bp->wol);
 else
  device_set_wakeup_capable(&pdev->dev, 0);

 bnxt_hwrm_set_cache_line_size(bp, cache_line_size());
 bnxt_hwrm_coal_params_qcaps(bp);
}
