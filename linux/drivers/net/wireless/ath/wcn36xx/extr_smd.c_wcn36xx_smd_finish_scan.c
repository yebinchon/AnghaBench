
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_finish_scan_req_msg {int mode; TYPE_1__ header; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
typedef enum wcn36xx_hal_sys_mode { ____Placeholder_wcn36xx_hal_sys_mode } wcn36xx_hal_sys_mode ;


 int INIT_HAL_MSG (struct wcn36xx_hal_finish_scan_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_finish_scan_req_msg) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_FINISH_SCAN_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_finish_scan(struct wcn36xx *wcn,
       enum wcn36xx_hal_sys_mode mode)
{
 struct wcn36xx_hal_finish_scan_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_FINISH_SCAN_REQ);

 msg_body.mode = mode;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 wcn36xx_dbg(WCN36XX_DBG_HAL, "hal finish scan mode %d\n",
      msg_body.mode);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_finish_scan failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_finish_scan response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
