
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_config_sta_params {int aid; int mac; int type; int bssid; int bssid_index; int sta_index; int action; } ;
struct wcn36xx_hal_config_sta_req_msg {TYPE_1__ header; struct wcn36xx_hal_config_sta_params sta_params; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_config_sta_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_config_sta_req_msg) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_CONFIG_STA_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_is_fw_version (struct wcn36xx*,int,int,int,int) ;
 int wcn36xx_smd_config_sta_rsp (struct wcn36xx*,struct ieee80211_sta*,int ,int ) ;
 int wcn36xx_smd_config_sta_v1 (struct wcn36xx*,struct wcn36xx_hal_config_sta_req_msg*) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;
 int wcn36xx_smd_set_sta_params (struct wcn36xx*,struct ieee80211_vif*,struct ieee80211_sta*,struct wcn36xx_hal_config_sta_params*) ;

int wcn36xx_smd_config_sta(struct wcn36xx *wcn, struct ieee80211_vif *vif,
      struct ieee80211_sta *sta)
{
 struct wcn36xx_hal_config_sta_req_msg msg;
 struct wcn36xx_hal_config_sta_params *sta_params;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg, WCN36XX_HAL_CONFIG_STA_REQ);

 sta_params = &msg.sta_params;

 wcn36xx_smd_set_sta_params(wcn, vif, sta, sta_params);

 if (!wcn36xx_is_fw_version(wcn, 1, 2, 2, 24)) {
  ret = wcn36xx_smd_config_sta_v1(wcn, &msg);
 } else {
  PREPARE_HAL_BUF(wcn->hal_buf, msg);

  wcn36xx_dbg(WCN36XX_DBG_HAL,
       "hal config sta action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\n",
       sta_params->action, sta_params->sta_index,
       sta_params->bssid_index, sta_params->bssid,
       sta_params->type, sta_params->mac, sta_params->aid);

  ret = wcn36xx_smd_send_and_wait(wcn, msg.header.len);
 }
 if (ret) {
  wcn36xx_err("Sending hal_config_sta failed\n");
  goto out;
 }
 ret = wcn36xx_smd_config_sta_rsp(wcn,
      sta,
      wcn->hal_buf,
      wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_config_sta response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
