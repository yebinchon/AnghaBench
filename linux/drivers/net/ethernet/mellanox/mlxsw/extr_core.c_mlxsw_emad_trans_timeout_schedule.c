
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_reg_trans {int timeout_dw; TYPE_1__* core; } ;
struct TYPE_2__ {int emad_wq; scalar_t__ fw_flash_in_progress; } ;


 int MLXSW_EMAD_TIMEOUT_DURING_FW_FLASH_MS ;
 int MLXSW_EMAD_TIMEOUT_MS ;
 unsigned long msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void mlxsw_emad_trans_timeout_schedule(struct mlxsw_reg_trans *trans)
{
 unsigned long timeout = msecs_to_jiffies(MLXSW_EMAD_TIMEOUT_MS);

 if (trans->core->fw_flash_in_progress)
  timeout = msecs_to_jiffies(MLXSW_EMAD_TIMEOUT_DURING_FW_FLASH_MS);

 queue_delayed_work(trans->core->emad_wq, &trans->timeout_dw, timeout);
}
