
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt_fw_health {int master_func_wait_dsecs; int flags; int normal_func_wait_dsecs; int post_reset_max_wait_dsecs; int post_reset_wait_dsecs; scalar_t__ master; } ;
struct bnxt {int fw_reset_max_dsecs; int fw_reset_min_dsecs; int fw_reset_state; scalar_t__ fw_reset_timestamp; int state; struct bnxt_fw_health* fw_health; } ;


 int BNXT_FW_RESET_STATE_ENABLE_DEV ;
 int BNXT_FW_RESET_STATE_RESET_FW ;
 int BNXT_STATE_IN_FW_RESET ;
 int BNXT_STATE_OPEN ;
 int ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU ;
 int HZ ;
 int bnxt_fw_reset_close (struct bnxt*) ;
 int bnxt_queue_fw_reset_work (struct bnxt*,int) ;
 scalar_t__ jiffies ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bnxt_force_fw_reset(struct bnxt *bp)
{
 struct bnxt_fw_health *fw_health = bp->fw_health;
 u32 wait_dsecs;

 if (!test_bit(BNXT_STATE_OPEN, &bp->state) ||
     test_bit(BNXT_STATE_IN_FW_RESET, &bp->state))
  return;

 set_bit(BNXT_STATE_IN_FW_RESET, &bp->state);
 bnxt_fw_reset_close(bp);
 wait_dsecs = fw_health->master_func_wait_dsecs;
 if (fw_health->master) {
  if (fw_health->flags & ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU)
   wait_dsecs = 0;
  bp->fw_reset_state = BNXT_FW_RESET_STATE_RESET_FW;
 } else {
  bp->fw_reset_timestamp = jiffies + wait_dsecs * HZ / 10;
  wait_dsecs = fw_health->normal_func_wait_dsecs;
  bp->fw_reset_state = BNXT_FW_RESET_STATE_ENABLE_DEV;
 }

 bp->fw_reset_min_dsecs = fw_health->post_reset_wait_dsecs;
 bp->fw_reset_max_dsecs = fw_health->post_reset_max_wait_dsecs;
 bnxt_queue_fw_reset_work(bp, wait_dsecs * HZ / 10);
}
