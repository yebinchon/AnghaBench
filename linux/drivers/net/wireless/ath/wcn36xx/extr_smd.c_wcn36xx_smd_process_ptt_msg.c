
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_process_ptt_msg_req_msg {TYPE_1__ header; int ptt_msg; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct ieee80211_vif {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_HAL_PTT_MSG (struct wcn36xx_hal_process_ptt_msg_req_msg*,size_t) ;
 int PREPARE_HAL_PTT_MSG_BUF (int ,struct wcn36xx_hal_process_ptt_msg_req_msg*) ;
 int kfree (struct wcn36xx_hal_process_ptt_msg_req_msg*) ;
 struct wcn36xx_hal_process_ptt_msg_req_msg* kmalloc (int,int ) ;
 int memcpy (int *,void*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_process_ptt_msg_rsp (int ,int ,void**) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_process_ptt_msg(struct wcn36xx *wcn,
    struct ieee80211_vif *vif, void *ptt_msg, size_t len,
  void **ptt_rsp_msg)
{
 struct wcn36xx_hal_process_ptt_msg_req_msg *p_msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 p_msg_body = kmalloc(
  sizeof(struct wcn36xx_hal_process_ptt_msg_req_msg) + len,
  GFP_ATOMIC);
 if (!p_msg_body) {
  ret = -ENOMEM;
  goto out_nomem;
 }
 INIT_HAL_PTT_MSG(p_msg_body, len);

 memcpy(&p_msg_body->ptt_msg, ptt_msg, len);

 PREPARE_HAL_PTT_MSG_BUF(wcn->hal_buf, p_msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, p_msg_body->header.len);
 if (ret) {
  wcn36xx_err("Sending hal_process_ptt_msg failed\n");
  goto out;
 }
 ret = wcn36xx_smd_process_ptt_msg_rsp(wcn->hal_buf, wcn->hal_rsp_len,
           ptt_rsp_msg);
 if (ret) {
  wcn36xx_err("process_ptt_msg response failed err=%d\n", ret);
  goto out;
 }
out:
 kfree(p_msg_body);
out_nomem:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
