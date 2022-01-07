
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {size_t len; } ;
struct wcn36xx_hal_update_cfg_req_msg {size_t len; TYPE_1__ header; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; scalar_t__ hal_buf; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_update_cfg_req_msg,int ) ;
 int PREPARE_HAL_BUF (scalar_t__,struct wcn36xx_hal_update_cfg_req_msg) ;
 int WCN36XX_HAL_UPDATE_CFG_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_cfg_tlv_u32 (struct wcn36xx*,size_t*,int ,int ) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (scalar_t__,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,size_t) ;

int wcn36xx_smd_update_cfg(struct wcn36xx *wcn, u32 cfg_id, u32 value)
{
 struct wcn36xx_hal_update_cfg_req_msg msg_body, *body;
 size_t len;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_UPDATE_CFG_REQ);

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 body = (struct wcn36xx_hal_update_cfg_req_msg *) wcn->hal_buf;
 len = msg_body.header.len;

 put_cfg_tlv_u32(wcn, &len, cfg_id, value);
 body->header.len = len;
 body->len = len - sizeof(*body);

 ret = wcn36xx_smd_send_and_wait(wcn, body->header.len);
 if (ret) {
  wcn36xx_err("Sending hal_update_cfg failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_update_cfg response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
