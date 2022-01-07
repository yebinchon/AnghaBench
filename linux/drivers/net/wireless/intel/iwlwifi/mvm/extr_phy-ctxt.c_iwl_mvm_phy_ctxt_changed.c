
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_phy_ctxt {int width; TYPE_2__* channel; } ;
struct iwl_mvm {TYPE_1__* fw; int mutex; } ;
struct cfg80211_chan_def {int width; TYPE_2__* chan; } ;
typedef enum iwl_ctxt_action { ____Placeholder_iwl_ctxt_action } iwl_ctxt_action ;
struct TYPE_4__ {scalar_t__ band; } ;
struct TYPE_3__ {int ucode_capa; } ;


 int FW_CTXT_ACTION_ADD ;
 int FW_CTXT_ACTION_MODIFY ;
 int FW_CTXT_ACTION_REMOVE ;
 int IWL_UCODE_TLV_CAPA_BINDING_CDB_SUPPORT ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_mvm_phy_ctxt_apply (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,struct cfg80211_chan_def*,int ,int ,int,int ) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_phy_ctxt_changed(struct iwl_mvm *mvm, struct iwl_mvm_phy_ctxt *ctxt,
        struct cfg80211_chan_def *chandef,
        u8 chains_static, u8 chains_dynamic)
{
 enum iwl_ctxt_action action = FW_CTXT_ACTION_MODIFY;

 lockdep_assert_held(&mvm->mutex);

 if (fw_has_capa(&mvm->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_BINDING_CDB_SUPPORT) &&
     ctxt->channel->band != chandef->chan->band) {
  int ret;


  ret = iwl_mvm_phy_ctxt_apply(mvm, ctxt, chandef,
          chains_static, chains_dynamic,
          FW_CTXT_ACTION_REMOVE, 0);
  if (ret)
   return ret;


  action = FW_CTXT_ACTION_ADD;
 }

 ctxt->channel = chandef->chan;
 ctxt->width = chandef->width;
 return iwl_mvm_phy_ctxt_apply(mvm, ctxt, chandef,
          chains_static, chains_dynamic,
          action, 0);
}
