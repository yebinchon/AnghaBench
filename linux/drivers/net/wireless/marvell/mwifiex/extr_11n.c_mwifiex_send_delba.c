
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u8 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_11n_delba {int peer_mac_addr; int del_ba_param_set; } ;
typedef int delba ;


 int DELBA_TID_POS ;
 int ETH_ALEN ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_11N_DELBA ;
 int IEEE80211_DELBA_PARAM_INITIATOR_MASK ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int ) ;
 int memset (struct host_cmd_ds_11n_delba*,int ,int) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct host_cmd_ds_11n_delba*,int) ;

int mwifiex_send_delba(struct mwifiex_private *priv, int tid, u8 *peer_mac,
         int initiator)
{
 struct host_cmd_ds_11n_delba delba;
 int ret;
 uint16_t del_ba_param_set;

 memset(&delba, 0, sizeof(delba));
 delba.del_ba_param_set = cpu_to_le16(tid << DELBA_TID_POS);

 del_ba_param_set = le16_to_cpu(delba.del_ba_param_set);
 if (initiator)
  del_ba_param_set |= IEEE80211_DELBA_PARAM_INITIATOR_MASK;
 else
  del_ba_param_set &= ~IEEE80211_DELBA_PARAM_INITIATOR_MASK;

 memcpy(&delba.peer_mac_addr, peer_mac, ETH_ALEN);


 ret = mwifiex_send_cmd(priv, HostCmd_CMD_11N_DELBA,
          HostCmd_ACT_GEN_SET, 0, &delba, 0);

 return ret;
}
