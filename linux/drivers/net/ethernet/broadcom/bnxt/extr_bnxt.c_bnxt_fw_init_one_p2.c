
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; } ;


 int ENODEV ;
 int bnxt_dcb_init (struct bnxt*) ;
 int bnxt_ethtool_init (struct bnxt*) ;
 int bnxt_hwrm_cfa_adv_flow_mgnt_qcaps (struct bnxt*) ;
 int bnxt_hwrm_error_recovery_qcfg (struct bnxt*) ;
 int bnxt_hwrm_func_drv_rgtr (struct bnxt*) ;
 int bnxt_hwrm_func_qcaps (struct bnxt*) ;
 int bnxt_hwrm_func_qcfg (struct bnxt*) ;
 int bnxt_hwrm_func_rgtr_async_events (struct bnxt*,int *,int ) ;
 int bnxt_hwrm_port_led_qcaps (struct bnxt*) ;
 int bnxt_hwrm_vnic_qcaps (struct bnxt*) ;
 int netdev_err (int ,char*,int) ;
 int netdev_warn (int ,char*,int) ;

__attribute__((used)) static int bnxt_fw_init_one_p2(struct bnxt *bp)
{
 int rc;


 rc = bnxt_hwrm_func_qcaps(bp);
 if (rc) {
  netdev_err(bp->dev, "hwrm query capability failure rc: %x\n",
      rc);
  return -ENODEV;
 }

 rc = bnxt_hwrm_cfa_adv_flow_mgnt_qcaps(bp);
 if (rc)
  netdev_warn(bp->dev, "hwrm query adv flow mgnt failure rc: %d\n",
       rc);

 rc = bnxt_hwrm_error_recovery_qcfg(bp);
 if (rc)
  netdev_warn(bp->dev, "hwrm query error recovery failure rc: %d\n",
       rc);

 rc = bnxt_hwrm_func_drv_rgtr(bp);
 if (rc)
  return -ENODEV;

 rc = bnxt_hwrm_func_rgtr_async_events(bp, ((void*)0), 0);
 if (rc)
  return -ENODEV;

 bnxt_hwrm_func_qcfg(bp);
 bnxt_hwrm_vnic_qcaps(bp);
 bnxt_hwrm_port_led_qcaps(bp);
 bnxt_ethtool_init(bp);
 bnxt_dcb_init(bp);
 return 0;
}
