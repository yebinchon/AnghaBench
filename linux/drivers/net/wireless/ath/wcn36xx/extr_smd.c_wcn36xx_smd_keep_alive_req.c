
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wcn36xx_vif {int bss_index; } ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_keep_alive_req_msg {int packet_type; TYPE_1__ header; int time_period; int bss_index; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct ieee80211_vif {int dummy; } ;


 int EINVAL ;
 int INIT_HAL_MSG (struct wcn36xx_hal_keep_alive_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_keep_alive_req_msg) ;
 int WCN36XX_HAL_KEEP_ALIVE_NULL_PKT ;
 int WCN36XX_HAL_KEEP_ALIVE_REQ ;
 int WCN36XX_HAL_KEEP_ALIVE_UNSOLICIT_ARP_RSP ;
 int WCN36XX_KEEP_ALIVE_TIME_PERIOD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;
 int wcn36xx_warn (char*,int) ;

int wcn36xx_smd_keep_alive_req(struct wcn36xx *wcn,
          struct ieee80211_vif *vif,
          int packet_type)
{
 struct wcn36xx_hal_keep_alive_req_msg msg_body;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_KEEP_ALIVE_REQ);

 if (packet_type == WCN36XX_HAL_KEEP_ALIVE_NULL_PKT) {
  msg_body.bss_index = vif_priv->bss_index;
  msg_body.packet_type = WCN36XX_HAL_KEEP_ALIVE_NULL_PKT;
  msg_body.time_period = WCN36XX_KEEP_ALIVE_TIME_PERIOD;
 } else if (packet_type == WCN36XX_HAL_KEEP_ALIVE_UNSOLICIT_ARP_RSP) {

 } else {
  wcn36xx_warn("unknown keep alive packet type %d\n", packet_type);
  ret = -EINVAL;
  goto out;
 }

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_keep_alive failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_keep_alive response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
