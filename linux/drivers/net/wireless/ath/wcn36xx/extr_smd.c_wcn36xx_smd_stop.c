
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int reason; } ;
struct wcn36xx_hal_mac_stop_req_msg {TYPE_2__ header; TYPE_1__ stop_req_params; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;


 int HAL_STOP_TYPE_RF_KILL ;
 int INIT_HAL_MSG (struct wcn36xx_hal_mac_stop_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_mac_stop_req_msg) ;
 int WCN36XX_HAL_STOP_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_stop(struct wcn36xx *wcn)
{
 struct wcn36xx_hal_mac_stop_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_STOP_REQ);

 msg_body.stop_req_params.reason = HAL_STOP_TYPE_RF_KILL;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_stop failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_stop response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
