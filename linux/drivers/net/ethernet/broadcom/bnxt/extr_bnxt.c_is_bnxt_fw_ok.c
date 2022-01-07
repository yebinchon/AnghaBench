
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnxt_fw_health {scalar_t__ last_fw_heartbeat; scalar_t__ last_fw_reset_cnt; } ;
struct bnxt {struct bnxt_fw_health* fw_health; } ;


 int BNXT_FW_HEARTBEAT_REG ;
 int BNXT_FW_RESET_CNT_REG ;
 scalar_t__ bnxt_fw_health_readl (struct bnxt*,int ) ;

__attribute__((used)) static bool is_bnxt_fw_ok(struct bnxt *bp)
{
 struct bnxt_fw_health *fw_health = bp->fw_health;
 bool no_heartbeat = 0, has_reset = 0;
 u32 val;

 val = bnxt_fw_health_readl(bp, BNXT_FW_HEARTBEAT_REG);
 if (val == fw_health->last_fw_heartbeat)
  no_heartbeat = 1;

 val = bnxt_fw_health_readl(bp, BNXT_FW_RESET_CNT_REG);
 if (val != fw_health->last_fw_reset_cnt)
  has_reset = 1;

 if (!no_heartbeat && has_reset)
  return 1;

 return 0;
}
