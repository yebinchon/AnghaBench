
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_4__ {int len; } ;
struct wcn36xx_hal_set_bss_key_req_msg {int enc_type; int num_keys; TYPE_2__ header; TYPE_1__* keys; void* bss_idx; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
typedef enum ani_ed_type { ____Placeholder_ani_ed_type } ani_ed_type ;
struct TYPE_3__ {int key; void* length; scalar_t__ pae_role; int direction; scalar_t__ unicast; void* id; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_set_bss_key_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_set_bss_key_req_msg) ;
 int WCN36XX_HAL_RX_ONLY ;
 int WCN36XX_HAL_SET_BSSKEY_REQ ;
 int memcpy (int ,void**,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_set_bsskey(struct wcn36xx *wcn,
      enum ani_ed_type enc_type,
      u8 bssidx,
      u8 keyidx,
      u8 keylen,
      u8 *key)
{
 struct wcn36xx_hal_set_bss_key_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_SET_BSSKEY_REQ);
 msg_body.bss_idx = bssidx;
 msg_body.enc_type = enc_type;
 msg_body.num_keys = 1;
 msg_body.keys[0].id = keyidx;
 msg_body.keys[0].unicast = 0;
 msg_body.keys[0].direction = WCN36XX_HAL_RX_ONLY;
 msg_body.keys[0].pae_role = 0;
 msg_body.keys[0].length = keylen;
 memcpy(msg_body.keys[0].key, key, keylen);

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_set_bsskey failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_set_bsskey response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
