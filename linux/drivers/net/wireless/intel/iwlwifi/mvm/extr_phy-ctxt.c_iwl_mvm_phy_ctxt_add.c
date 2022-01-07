
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_phy_ctxt {int channel; scalar_t__ ref; } ;
struct iwl_mvm {int mutex; int status; } ;
struct cfg80211_chan_def {int chan; } ;


 int FW_CTXT_ACTION_ADD ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int WARN_ON (int) ;
 int iwl_mvm_phy_ctxt_apply (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,struct cfg80211_chan_def*,int ,int ,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int *) ;

int iwl_mvm_phy_ctxt_add(struct iwl_mvm *mvm, struct iwl_mvm_phy_ctxt *ctxt,
    struct cfg80211_chan_def *chandef,
    u8 chains_static, u8 chains_dynamic)
{
 WARN_ON(!test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) &&
  ctxt->ref);
 lockdep_assert_held(&mvm->mutex);

 ctxt->channel = chandef->chan;

 return iwl_mvm_phy_ctxt_apply(mvm, ctxt, chandef,
          chains_static, chains_dynamic,
          FW_CTXT_ACTION_ADD, 0);
}
