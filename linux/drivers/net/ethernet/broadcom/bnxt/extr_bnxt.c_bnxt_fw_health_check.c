
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnxt_fw_health {scalar_t__ last_fw_heartbeat; scalar_t__ last_fw_reset_cnt; scalar_t__ tmr_multiplier; scalar_t__ tmr_counter; int enabled; } ;
struct bnxt {int sp_event; int state; struct bnxt_fw_health* fw_health; } ;


 int BNXT_FW_EXCEPTION_SP_EVENT ;
 int BNXT_FW_HEARTBEAT_REG ;
 int BNXT_FW_RESET_CNT_REG ;
 int BNXT_STATE_IN_FW_RESET ;
 scalar_t__ bnxt_fw_health_readl (struct bnxt*,int ) ;
 int bnxt_queue_sp_work (struct bnxt*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bnxt_fw_health_check(struct bnxt *bp)
{
 struct bnxt_fw_health *fw_health = bp->fw_health;
 u32 val;

 if (!fw_health || !fw_health->enabled ||
     test_bit(BNXT_STATE_IN_FW_RESET, &bp->state))
  return;

 if (fw_health->tmr_counter) {
  fw_health->tmr_counter--;
  return;
 }

 val = bnxt_fw_health_readl(bp, BNXT_FW_HEARTBEAT_REG);
 if (val == fw_health->last_fw_heartbeat)
  goto fw_reset;

 fw_health->last_fw_heartbeat = val;

 val = bnxt_fw_health_readl(bp, BNXT_FW_RESET_CNT_REG);
 if (val != fw_health->last_fw_reset_cnt)
  goto fw_reset;

 fw_health->tmr_counter = fw_health->tmr_multiplier;
 return;

fw_reset:
 set_bit(BNXT_FW_EXCEPTION_SP_EVENT, &bp->sp_event);
 bnxt_queue_sp_work(bp);
}
