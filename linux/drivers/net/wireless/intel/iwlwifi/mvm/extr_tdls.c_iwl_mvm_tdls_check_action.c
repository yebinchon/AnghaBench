
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int sent_timestamp; } ;
struct TYPE_4__ {int state; size_t cur_sta_id; TYPE_1__ peer; } ;
struct iwl_mvm {TYPE_2__ tdls_cs; int mutex; int * fw_id_to_mac_id; } ;
struct ieee80211_sta {int addr; } ;
typedef enum iwl_tdls_channel_switch_type { ____Placeholder_iwl_tdls_channel_switch_type } iwl_tdls_channel_switch_type ;


 int EBUSY ;
 int EINVAL ;
 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 int IWL_DEBUG_TDLS (struct iwl_mvm*,char*,int,int,int const*,int,int) ;
 size_t IWL_MVM_INVALID_STA ;





 int TDLS_MOVE_CH ;
 int TDLS_SEND_CHAN_SW_REQ ;
 int TDLS_SEND_CHAN_SW_RESP_AND_MOVE_CH ;
 int ether_addr_equal (int const*,int ) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static int
iwl_mvm_tdls_check_action(struct iwl_mvm *mvm,
     enum iwl_tdls_channel_switch_type type,
     const u8 *peer, bool peer_initiator, u32 timestamp)
{
 bool same_peer = 0;
 int ret = 0;


 if (mvm->tdls_cs.state != 131 &&
     mvm->tdls_cs.cur_sta_id != IWL_MVM_INVALID_STA) {
  struct ieee80211_sta *sta = rcu_dereference_protected(
    mvm->fw_id_to_mac_id[mvm->tdls_cs.cur_sta_id],
    lockdep_is_held(&mvm->mutex));
  if (!IS_ERR_OR_NULL(sta))
   same_peer = ether_addr_equal(peer, sta->addr);
 }

 switch (mvm->tdls_cs.state) {
 case 131:




  if (type == TDLS_MOVE_CH)
   ret = -EINVAL;
  break;
 case 129:

  if (!same_peer)
   ret = -EBUSY;
  else if (type == TDLS_SEND_CHAN_SW_RESP_AND_MOVE_CH &&
    !peer_initiator)





   ret = -EBUSY;
  else if (type == TDLS_SEND_CHAN_SW_REQ)

   ret = -EBUSY;
  else if (timestamp <= mvm->tdls_cs.peer.sent_timestamp)

   ret = -EINVAL;
  break;
 case 128:




  ret = -EBUSY;
  break;
 case 130:

  if (type == TDLS_SEND_CHAN_SW_REQ) {
   if (!same_peer)
    ret = -EBUSY;
   else if (peer_initiator)
    ret = -EBUSY;
  } else if (type == TDLS_MOVE_CH) {
   ret = -EINVAL;
  }
  break;
 case 132:




  if (type != TDLS_MOVE_CH || !same_peer)
   ret = -EBUSY;
  break;
 }

 if (ret)
  IWL_DEBUG_TDLS(mvm,
          "Invalid TDLS action %d state %d peer %pM same_peer %d initiator %d\n",
          type, mvm->tdls_cs.state, peer, same_peer,
          peer_initiator);

 return ret;
}
