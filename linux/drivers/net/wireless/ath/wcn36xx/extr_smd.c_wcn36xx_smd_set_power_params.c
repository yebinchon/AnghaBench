
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_set_power_params_req_msg {int ignore_dtim; int dtim_period; TYPE_1__ header; int listen_interval; } ;
struct wcn36xx {int hal_mutex; int hal_buf; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_set_power_params_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_set_power_params_req_msg) ;
 int WCN36XX_HAL_SET_POWER_PARAMS_REQ ;
 int WCN36XX_LISTEN_INTERVAL (struct wcn36xx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_set_power_params(struct wcn36xx *wcn, bool ignore_dtim)
{
 struct wcn36xx_hal_set_power_params_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_SET_POWER_PARAMS_REQ);




 if (ignore_dtim) {
  msg_body.ignore_dtim = 1;
  msg_body.dtim_period = 2;
 }
 msg_body.listen_interval = WCN36XX_LISTEN_INTERVAL(wcn);

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_set_power_params failed\n");
  goto out;
 }

out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
