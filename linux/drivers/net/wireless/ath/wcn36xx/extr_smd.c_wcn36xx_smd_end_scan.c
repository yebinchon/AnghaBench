
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_end_scan_req_msg {TYPE_1__ header; int scan_channel; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_end_scan_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_end_scan_req_msg) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_END_SCAN_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int ) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_end_scan(struct wcn36xx *wcn, u8 scan_channel)
{
 struct wcn36xx_hal_end_scan_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_END_SCAN_REQ);

 msg_body.scan_channel = scan_channel;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 wcn36xx_dbg(WCN36XX_DBG_HAL, "hal end scan channel %d\n",
      msg_body.scan_channel);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_end_scan failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_end_scan response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
