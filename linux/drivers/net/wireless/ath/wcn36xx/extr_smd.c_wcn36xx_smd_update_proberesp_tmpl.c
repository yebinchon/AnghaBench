
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_send_probe_resp_req_msg {TYPE_1__ header; int * bssid; int probe_resp_template_len; int probe_resp_template; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct sk_buff {int len; int data; } ;
struct ieee80211_vif {int addr; } ;


 int BEACON_TEMPLATE_SIZE ;
 int E2BIG ;
 int ETH_ALEN ;
 int INIT_HAL_MSG (struct wcn36xx_hal_send_probe_resp_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_send_probe_resp_req_msg) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_UPDATE_PROBE_RSP_TEMPLATE_REQ ;
 int memcpy (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int ,int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;
 int wcn36xx_warn (char*,int ) ;

int wcn36xx_smd_update_proberesp_tmpl(struct wcn36xx *wcn,
          struct ieee80211_vif *vif,
          struct sk_buff *skb)
{
 struct wcn36xx_hal_send_probe_resp_req_msg msg;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg, WCN36XX_HAL_UPDATE_PROBE_RSP_TEMPLATE_REQ);

 if (skb->len > BEACON_TEMPLATE_SIZE) {
  wcn36xx_warn("probe response template is too big: %d\n",
        skb->len);
  ret = -E2BIG;
  goto out;
 }

 msg.probe_resp_template_len = skb->len;
 memcpy(&msg.probe_resp_template, skb->data, skb->len);

 memcpy(msg.bssid, vif->addr, ETH_ALEN);

 PREPARE_HAL_BUF(wcn->hal_buf, msg);

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal update probe rsp len %d bssid %pM\n",
      msg.probe_resp_template_len, msg.bssid);

 ret = wcn36xx_smd_send_and_wait(wcn, msg.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_update_proberesp_tmpl failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_update_proberesp_tmpl response failed err=%d\n",
       ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
