
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int port_info; } ;
struct ice_pf {int state; int flags; TYPE_1__* pdev; struct ice_hw hw; } ;
struct device {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_reset_req { ____Placeholder_ice_reset_req } ice_reset_req ;
struct TYPE_2__ {struct device dev; } ;


 int ICE_FLAG_DCB_ENA ;
 int ICE_FLAG_SRIOV_ENA ;
 int ICE_RESET_PFR ;
 int ICE_VSI_PF ;
 int ICE_VSI_VF ;
 int __ICE_DOWN ;
 int __ICE_NEEDS_RESTART ;
 int __ICE_RESET_FAILED ;
 int clear_bit (int ,int ) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 int ice_clear_pf_cfg (struct ice_hw*) ;
 int ice_clear_pxe_mode (struct ice_hw*) ;
 int ice_dcb_rebuild (struct ice_pf*) ;
 int ice_fill_blk_tbls (struct ice_hw*) ;
 int ice_get_caps (struct ice_hw*) ;
 int ice_init_all_ctrlq (struct ice_hw*) ;
 int ice_is_safe_mode (struct ice_pf*) ;
 int ice_load_pkg (int *,struct ice_pf*) ;
 int ice_replay_post (struct ice_hw*) ;
 int ice_req_irq_msix_misc (struct ice_pf*) ;
 int ice_sched_cleanup_all (struct ice_hw*) ;
 int ice_sched_init_port (int ) ;
 int ice_send_version (struct ice_pf*) ;
 int ice_shutdown_all_ctrlq (struct ice_hw*) ;
 int ice_update_link_info (int ) ;
 int ice_update_pf_netdev_link (struct ice_pf*) ;
 int ice_vsi_rebuild_by_type (struct ice_pf*,int ) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
{
 struct device *dev = &pf->pdev->dev;
 struct ice_hw *hw = &pf->hw;
 enum ice_status ret;
 int err;

 if (test_bit(__ICE_DOWN, pf->state))
  goto clear_recovery;

 dev_dbg(dev, "rebuilding PF after reset_type=%d\n", reset_type);

 ret = ice_init_all_ctrlq(hw);
 if (ret) {
  dev_err(dev, "control queues init failed %d\n", ret);
  goto err_init_ctrlq;
 }


 if (!ice_is_safe_mode(pf)) {

  if (reset_type == ICE_RESET_PFR)
   ice_fill_blk_tbls(hw);
  else

   ice_load_pkg(((void*)0), pf);
 }

 ret = ice_clear_pf_cfg(hw);
 if (ret) {
  dev_err(dev, "clear PF configuration failed %d\n", ret);
  goto err_init_ctrlq;
 }

 ice_clear_pxe_mode(hw);

 ret = ice_get_caps(hw);
 if (ret) {
  dev_err(dev, "ice_get_caps failed %d\n", ret);
  goto err_init_ctrlq;
 }

 err = ice_sched_init_port(hw->port_info);
 if (err)
  goto err_sched_init_port;

 err = ice_update_link_info(hw->port_info);
 if (err)
  dev_err(&pf->pdev->dev, "Get link status error %d\n", err);


 err = ice_req_irq_msix_misc(pf);
 if (err) {
  dev_err(dev, "misc vector setup failed: %d\n", err);
  goto err_sched_init_port;
 }

 if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
  ice_dcb_rebuild(pf);


 err = ice_vsi_rebuild_by_type(pf, ICE_VSI_PF);
 if (err) {
  dev_err(dev, "PF VSI rebuild failed: %d\n", err);
  goto err_vsi_rebuild;
 }

 if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
  err = ice_vsi_rebuild_by_type(pf, ICE_VSI_VF);
  if (err) {
   dev_err(dev, "VF VSI rebuild failed: %d\n", err);
   goto err_vsi_rebuild;
  }
 }

 ice_update_pf_netdev_link(pf);


 ret = ice_send_version(pf);
 if (ret) {
  dev_err(dev,
   "Rebuild failed due to error sending driver version: %d\n",
   ret);
  goto err_vsi_rebuild;
 }

 ice_replay_post(hw);


 clear_bit(__ICE_RESET_FAILED, pf->state);
 return;

err_vsi_rebuild:
err_sched_init_port:
 ice_sched_cleanup_all(hw);
err_init_ctrlq:
 ice_shutdown_all_ctrlq(hw);
 set_bit(__ICE_RESET_FAILED, pf->state);
clear_recovery:

 set_bit(__ICE_NEEDS_RESTART, pf->state);
 dev_err(dev, "Rebuild failed, unload and reload driver\n");
}
