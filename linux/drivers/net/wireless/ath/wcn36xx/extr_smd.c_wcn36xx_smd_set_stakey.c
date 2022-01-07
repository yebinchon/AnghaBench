
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {int enc_type; int single_tid_rc; TYPE_1__* key; scalar_t__ wep_type; void* def_wep_idx; void* sta_index; } ;
struct wcn36xx_hal_set_sta_key_req_msg {TYPE_3__ header; TYPE_2__ set_sta_key_params; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
typedef enum ani_ed_type { ____Placeholder_ani_ed_type } ani_ed_type ;
struct TYPE_4__ {int unicast; int key; void* length; scalar_t__ pae_role; int direction; void* id; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_set_sta_key_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_set_sta_key_req_msg) ;
 int WCN36XX_HAL_ED_WEP104 ;
 int WCN36XX_HAL_ED_WEP40 ;
 int WCN36XX_HAL_SET_STAKEY_REQ ;
 int WCN36XX_HAL_TX_RX ;
 int memcpy (int ,void**,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_set_stakey(struct wcn36xx *wcn,
      enum ani_ed_type enc_type,
      u8 keyidx,
      u8 keylen,
      u8 *key,
      u8 sta_index)
{
 struct wcn36xx_hal_set_sta_key_req_msg msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_SET_STAKEY_REQ);

 msg_body.set_sta_key_params.sta_index = sta_index;
 msg_body.set_sta_key_params.enc_type = enc_type;

 if (enc_type == WCN36XX_HAL_ED_WEP104 ||
     enc_type == WCN36XX_HAL_ED_WEP40) {

  msg_body.set_sta_key_params.def_wep_idx = keyidx;
  msg_body.set_sta_key_params.wep_type = 0;
 } else {
  msg_body.set_sta_key_params.key[0].id = keyidx;
  msg_body.set_sta_key_params.key[0].unicast = 1;
  msg_body.set_sta_key_params.key[0].direction = WCN36XX_HAL_TX_RX;
  msg_body.set_sta_key_params.key[0].pae_role = 0;
  msg_body.set_sta_key_params.key[0].length = keylen;
  memcpy(msg_body.set_sta_key_params.key[0].key, key, keylen);
 }

 msg_body.set_sta_key_params.single_tid_rc = 1;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_set_stakey failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_set_stakey response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
