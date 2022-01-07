
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct iwl_phy_context_cmd {int dummy; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef int cmd ;


 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int PHY_CONTEXT_CMD ;
 scalar_t__ iwl_mvm_chan_info_padding (struct iwl_mvm*) ;
 int iwl_mvm_phy_ctxt_cmd_data (struct iwl_mvm*,struct iwl_phy_context_cmd*,struct cfg80211_chan_def*,int ,int ) ;
 int iwl_mvm_phy_ctxt_cmd_hdr (struct iwl_mvm_phy_ctxt*,struct iwl_phy_context_cmd*,int ,int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,scalar_t__,struct iwl_phy_context_cmd*) ;

__attribute__((used)) static int iwl_mvm_phy_ctxt_apply(struct iwl_mvm *mvm,
      struct iwl_mvm_phy_ctxt *ctxt,
      struct cfg80211_chan_def *chandef,
      u8 chains_static, u8 chains_dynamic,
      u32 action, u32 apply_time)
{
 struct iwl_phy_context_cmd cmd;
 int ret;
 u16 len = sizeof(cmd) - iwl_mvm_chan_info_padding(mvm);


 iwl_mvm_phy_ctxt_cmd_hdr(ctxt, &cmd, action, apply_time);


 iwl_mvm_phy_ctxt_cmd_data(mvm, &cmd, chandef,
      chains_static, chains_dynamic);

 ret = iwl_mvm_send_cmd_pdu(mvm, PHY_CONTEXT_CMD, 0, len, &cmd);
 if (ret)
  IWL_ERR(mvm, "PHY ctxt cmd error. ret=%d\n", ret);
 return ret;
}
