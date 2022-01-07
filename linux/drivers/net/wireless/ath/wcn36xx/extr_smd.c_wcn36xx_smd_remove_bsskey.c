
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_remove_bss_key_req_msg {int enc_type; TYPE_1__ header; void* key_id; void* bss_idx; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
typedef enum ani_ed_type { ____Placeholder_ani_ed_type } ani_ed_type ;


 int INIT_HAL_MSG (struct wcn36xx_hal_remove_bss_key_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_remove_bss_key_req_msg) ;
 int WCN36XX_HAL_RMV_BSSKEY_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_remove_bsskey(struct wcn36xx *wcn,
         enum ani_ed_type enc_type,
         u8 bssidx,
         u8 keyidx)
{
 struct wcn36xx_hal_remove_bss_key_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_RMV_BSSKEY_REQ);
 msg_body.bss_idx = bssidx;
 msg_body.enc_type = enc_type;
 msg_body.key_id = keyidx;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_remove_bsskey failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_remove_bsskey response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
