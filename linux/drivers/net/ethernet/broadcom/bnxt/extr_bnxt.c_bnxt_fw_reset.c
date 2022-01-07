
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ active_vfs; } ;
struct bnxt {scalar_t__ fw_reset_max_dsecs; int fw_cap; int fw_reset_min_dsecs; int fw_reset_state; int dev; int state; TYPE_1__ pf; } ;


 int BNXT_FW_CAP_ERR_RECOVER_RELOAD ;
 int BNXT_FW_RESET_STATE_ENABLE_DEV ;
 int BNXT_FW_RESET_STATE_POLL_FW_DOWN ;
 int BNXT_FW_RESET_STATE_POLL_VF ;
 int BNXT_STATE_FW_FATAL_COND ;
 int BNXT_STATE_IN_FW_RESET ;
 int BNXT_STATE_OPEN ;
 int HZ ;
 int bnxt_fw_reset_close (struct bnxt*) ;
 int bnxt_get_registered_vfs (struct bnxt*) ;
 int bnxt_queue_fw_reset_work (struct bnxt*,int) ;
 int bnxt_rtnl_lock_sp (struct bnxt*) ;
 int bnxt_rtnl_unlock_sp (struct bnxt*) ;
 int clear_bit (int ,int *) ;
 int dev_close (int ) ;
 int netdev_err (int ,char*,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void bnxt_fw_reset(struct bnxt *bp)
{
 bnxt_rtnl_lock_sp(bp);
 if (test_bit(BNXT_STATE_OPEN, &bp->state) &&
     !test_bit(BNXT_STATE_IN_FW_RESET, &bp->state)) {
  int n = 0, tmo;

  set_bit(BNXT_STATE_IN_FW_RESET, &bp->state);
  if (bp->pf.active_vfs &&
      !test_bit(BNXT_STATE_FW_FATAL_COND, &bp->state))
   n = bnxt_get_registered_vfs(bp);
  if (n < 0) {
   netdev_err(bp->dev, "Firmware reset aborted, rc = %d\n",
       n);
   clear_bit(BNXT_STATE_IN_FW_RESET, &bp->state);
   dev_close(bp->dev);
   goto fw_reset_exit;
  } else if (n > 0) {
   u16 vf_tmo_dsecs = n * 10;

   if (bp->fw_reset_max_dsecs < vf_tmo_dsecs)
    bp->fw_reset_max_dsecs = vf_tmo_dsecs;
   bp->fw_reset_state =
    BNXT_FW_RESET_STATE_POLL_VF;
   bnxt_queue_fw_reset_work(bp, HZ / 10);
   goto fw_reset_exit;
  }
  bnxt_fw_reset_close(bp);
  if (bp->fw_cap & BNXT_FW_CAP_ERR_RECOVER_RELOAD) {
   bp->fw_reset_state = BNXT_FW_RESET_STATE_POLL_FW_DOWN;
   tmo = HZ / 10;
  } else {
   bp->fw_reset_state = BNXT_FW_RESET_STATE_ENABLE_DEV;
   tmo = bp->fw_reset_min_dsecs * HZ / 10;
  }
  bnxt_queue_fw_reset_work(bp, tmo);
 }
fw_reset_exit:
 bnxt_rtnl_unlock_sp(bp);
}
