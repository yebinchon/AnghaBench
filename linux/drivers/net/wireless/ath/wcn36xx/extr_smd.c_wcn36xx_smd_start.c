
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t len; } ;
struct TYPE_5__ {size_t len; int type; } ;
struct wcn36xx_hal_mac_start_req_msg {TYPE_2__ header; TYPE_1__ params; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; scalar_t__ hal_buf; } ;
struct TYPE_7__ {int value; int cfg_id; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int DRIVER_TYPE_PRODUCTION ;
 int INIT_HAL_MSG (struct wcn36xx_hal_mac_start_req_msg,int ) ;
 int PREPARE_HAL_BUF (scalar_t__,struct wcn36xx_hal_mac_start_req_msg) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_START_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_cfg_tlv_u32 (struct wcn36xx*,size_t*,int ,int ) ;
 TYPE_3__* wcn36xx_cfg_vals ;
 int wcn36xx_dbg (int ,char*,int ) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,size_t) ;
 int wcn36xx_smd_start_rsp (struct wcn36xx*,scalar_t__,int ) ;

int wcn36xx_smd_start(struct wcn36xx *wcn)
{
 struct wcn36xx_hal_mac_start_req_msg msg_body, *body;
 int ret;
 int i;
 size_t len;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_START_REQ);

 msg_body.params.type = DRIVER_TYPE_PRODUCTION;
 msg_body.params.len = 0;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 body = (struct wcn36xx_hal_mac_start_req_msg *)wcn->hal_buf;
 len = body->header.len;

 for (i = 0; i < ARRAY_SIZE(wcn36xx_cfg_vals); i++) {
  ret = put_cfg_tlv_u32(wcn, &len, wcn36xx_cfg_vals[i].cfg_id,
          wcn36xx_cfg_vals[i].value);
  if (ret)
   goto out;
 }
 body->header.len = len;
 body->params.len = len - sizeof(*body);

 wcn36xx_dbg(WCN36XX_DBG_HAL, "hal start type %d\n",
      msg_body.params.type);

 ret = wcn36xx_smd_send_and_wait(wcn, body->header.len);
 if (ret) {
  wcn36xx_err("Sending hal_start failed\n");
  goto out;
 }

 ret = wcn36xx_smd_start_rsp(wcn, wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_start response failed err=%d\n", ret);
  goto out;
 }

out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
