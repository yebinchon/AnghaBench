
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_lq_cmd {int flags; } ;
struct TYPE_3__ {struct iwl_lq_cmd lq; } ;
struct TYPE_4__ {TYPE_1__ rs_drv; } ;
struct iwl_mvm_sta {scalar_t__ tx_protection; TYPE_2__ lq_sta; } ;
struct iwl_mvm {int mutex; } ;


 int LQ_FLAG_USE_RTS_MSK ;
 int iwl_mvm_send_lq_cmd (struct iwl_mvm*,struct iwl_lq_cmd*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int rs_drv_tx_protection(struct iwl_mvm *mvm, struct iwl_mvm_sta *mvmsta,
    bool enable)
{
 struct iwl_lq_cmd *lq = &mvmsta->lq_sta.rs_drv.lq;

 lockdep_assert_held(&mvm->mutex);

 if (enable) {
  if (mvmsta->tx_protection == 0)
   lq->flags |= LQ_FLAG_USE_RTS_MSK;
  mvmsta->tx_protection++;
 } else {
  mvmsta->tx_protection--;
  if (mvmsta->tx_protection == 0)
   lq->flags &= ~LQ_FLAG_USE_RTS_MSK;
 }

 return iwl_mvm_send_lq_cmd(mvm, lq);
}
