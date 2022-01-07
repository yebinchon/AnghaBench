
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bt_activity_grading; } ;
struct iwl_mvm {TYPE_2__ last_bt_notif; TYPE_1__* cfg; } ;
struct TYPE_3__ {scalar_t__ bt_shared_single_ant; } ;


 scalar_t__ BT_HIGH_TRAFFIC ;
 scalar_t__ le32_to_cpu (int ) ;

bool iwl_mvm_bt_coex_is_shared_ant_avail(struct iwl_mvm *mvm)
{

 if (mvm->cfg->bt_shared_single_ant)
  return 1;

 return le32_to_cpu(mvm->last_bt_notif.bt_activity_grading) < BT_HIGH_TRAFFIC;
}
