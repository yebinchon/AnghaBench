
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_switch_channel_req_msg {int tx_mgmt_power; int max_tx_power; TYPE_1__ header; int self_sta_mac_addr; scalar_t__ channel_number; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct ieee80211_vif {int addr; } ;


 int ETH_ALEN ;
 int INIT_HAL_MSG (struct wcn36xx_hal_switch_channel_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_switch_channel_req_msg) ;
 int WCN36XX_HAL_CH_SWITCH_REQ ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;
 int wcn36xx_smd_switch_channel_rsp (int ,int ) ;

int wcn36xx_smd_switch_channel(struct wcn36xx *wcn,
          struct ieee80211_vif *vif, int ch)
{
 struct wcn36xx_hal_switch_channel_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_CH_SWITCH_REQ);

 msg_body.channel_number = (u8)ch;
 msg_body.tx_mgmt_power = 0xbf;
 msg_body.max_tx_power = 0xbf;
 memcpy(msg_body.self_sta_mac_addr, vif->addr, ETH_ALEN);

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_switch_channel failed\n");
  goto out;
 }
 ret = wcn36xx_smd_switch_channel_rsp(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_switch_channel response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
