
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_dump_cmd_req_msg {TYPE_1__ header; void* arg5; void* arg4; void* arg3; void* arg2; void* arg1; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_dump_cmd_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_dump_cmd_req_msg) ;
 int WCN36XX_HAL_DUMP_COMMAND_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_dump_cmd_req(struct wcn36xx *wcn, u32 arg1, u32 arg2,
        u32 arg3, u32 arg4, u32 arg5)
{
 struct wcn36xx_hal_dump_cmd_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_DUMP_COMMAND_REQ);

 msg_body.arg1 = arg1;
 msg_body.arg2 = arg2;
 msg_body.arg3 = arg3;
 msg_body.arg4 = arg4;
 msg_body.arg5 = arg5;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_dump_cmd failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_dump_cmd response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
