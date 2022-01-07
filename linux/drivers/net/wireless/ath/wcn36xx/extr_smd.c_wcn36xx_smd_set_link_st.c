
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_set_link_state_req_msg {int state; TYPE_1__ header; int self_mac_addr; int bssid; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
typedef enum wcn36xx_hal_link_state { ____Placeholder_wcn36xx_hal_link_state } wcn36xx_hal_link_state ;


 int ETH_ALEN ;
 int INIT_HAL_MSG (struct wcn36xx_hal_set_link_state_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_set_link_state_req_msg) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_SET_LINK_ST_REQ ;
 int memcpy (int *,int const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int ,int ,int) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_set_link_st(struct wcn36xx *wcn, const u8 *bssid,
       const u8 *sta_mac,
       enum wcn36xx_hal_link_state state)
{
 struct wcn36xx_hal_set_link_state_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_SET_LINK_ST_REQ);

 memcpy(&msg_body.bssid, bssid, ETH_ALEN);
 memcpy(&msg_body.self_mac_addr, sta_mac, ETH_ALEN);
 msg_body.state = state;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal set link state bssid %pM self_mac_addr %pM state %d\n",
      msg_body.bssid, msg_body.self_mac_addr, msg_body.state);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_set_link_st failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_set_link_st response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
