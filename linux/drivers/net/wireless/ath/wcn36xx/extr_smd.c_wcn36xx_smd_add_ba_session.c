
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef void* u16 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_add_ba_session_req_msg {int dialog_token; int policy; TYPE_1__ header; void* direction; void* ssn; scalar_t__ timeout; int buffer_size; void* tid; int mac_addr; void* sta_index; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct ieee80211_sta {int addr; } ;


 int ETH_ALEN ;
 int INIT_HAL_MSG (struct wcn36xx_hal_add_ba_session_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_add_ba_session_req_msg) ;
 int WCN36XX_AGGR_BUFFER_SIZE ;
 int WCN36XX_HAL_ADD_BA_SESSION_REQ ;
 int memcpy (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_add_ba_session(struct wcn36xx *wcn,
  struct ieee80211_sta *sta,
  u16 tid,
  u16 *ssn,
  u8 direction,
  u8 sta_index)
{
 struct wcn36xx_hal_add_ba_session_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_ADD_BA_SESSION_REQ);

 msg_body.sta_index = sta_index;
 memcpy(&msg_body.mac_addr, sta->addr, ETH_ALEN);
 msg_body.dialog_token = 0x10;
 msg_body.tid = tid;


 msg_body.policy = 1;
 msg_body.buffer_size = WCN36XX_AGGR_BUFFER_SIZE;
 msg_body.timeout = 0;
 if (ssn)
  msg_body.ssn = *ssn;
 msg_body.direction = direction;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_add_ba_session failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_add_ba_session response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
