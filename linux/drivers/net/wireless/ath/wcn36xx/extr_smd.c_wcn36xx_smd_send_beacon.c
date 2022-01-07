
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_send_beacon_req_msg {int beacon_length; int beacon_length6; int* beacon; int* bssid; int tim_ie_offset; int p2p_ie_offset; TYPE_1__ header; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct sk_buff {int* data; int len; } ;
struct ieee80211_vif {scalar_t__ type; int* addr; } ;


 int BEACON_TEMPLATE_SIZE ;
 int ENOMEM ;
 int ETH_ALEN ;
 int INIT_HAL_MSG (struct wcn36xx_hal_send_beacon_req_msg,int ) ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_send_beacon_req_msg) ;
 int TIM_MIN_PVM_SIZE ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_SEND_BEACON_REQ ;
 int memcpy (int*,int*,int) ;
 int memmove (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int,...) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_send_beacon(struct wcn36xx *wcn, struct ieee80211_vif *vif,
       struct sk_buff *skb_beacon, u16 tim_off,
       u16 p2p_off)
{
 struct wcn36xx_hal_send_beacon_req_msg msg_body;
 int ret, pad, pvm_len;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_SEND_BEACON_REQ);

 pvm_len = skb_beacon->data[tim_off + 1] - 3;
 pad = TIM_MIN_PVM_SIZE - pvm_len;


 if (vif->type == NL80211_IFTYPE_MESH_POINT)
  pad = 0;

 msg_body.beacon_length = skb_beacon->len + pad;

 msg_body.beacon_length6 = msg_body.beacon_length + 6;

 if (msg_body.beacon_length > BEACON_TEMPLATE_SIZE) {
  wcn36xx_err("Beacon is to big: beacon size=%d\n",
         msg_body.beacon_length);
  ret = -ENOMEM;
  goto out;
 }
 memcpy(msg_body.beacon, skb_beacon->data, skb_beacon->len);
 memcpy(msg_body.bssid, vif->addr, ETH_ALEN);

 if (pad > 0) {






  wcn36xx_dbg(WCN36XX_DBG_HAL, "Pad TIM PVM. %d bytes at %d\n",
       pad, pvm_len);
  memmove(&msg_body.beacon[tim_off + 5 + pvm_len + pad],
   &msg_body.beacon[tim_off + 5 + pvm_len],
   skb_beacon->len - (tim_off + 5 + pvm_len));
  memset(&msg_body.beacon[tim_off + 5 + pvm_len], 0, pad);
  msg_body.beacon[tim_off + 1] += pad;
 }


 if (vif->type == NL80211_IFTYPE_MESH_POINT)

  msg_body.tim_ie_offset = 256;
 else
  msg_body.tim_ie_offset = tim_off+4;
 msg_body.p2p_ie_offset = p2p_off;
 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal send beacon beacon_length %d\n",
      msg_body.beacon_length);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_send_beacon failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_send_beacon response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
