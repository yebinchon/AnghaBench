
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_trigger_ba_req_msg {int candidate_cnt; TYPE_1__ header; scalar_t__ session_id; } ;
struct wcn36xx_hal_trigger_ba_req_candidate {int tid_bitmap; int sta_index; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; scalar_t__ hal_buf; } ;
typedef int msg_body ;


 int INIT_HAL_MSG (struct wcn36xx_hal_trigger_ba_req_msg,int ) ;
 int PREPARE_HAL_BUF (scalar_t__,struct wcn36xx_hal_trigger_ba_req_msg) ;
 int WCN36XX_HAL_TRIGGER_BA_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int) ;
 int wcn36xx_smd_trigger_ba_rsp (scalar_t__,int ) ;

int wcn36xx_smd_trigger_ba(struct wcn36xx *wcn, u8 sta_index)
{
 struct wcn36xx_hal_trigger_ba_req_msg msg_body;
 struct wcn36xx_hal_trigger_ba_req_candidate *candidate;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_TRIGGER_BA_REQ);

 msg_body.session_id = 0;
 msg_body.candidate_cnt = 1;
 msg_body.header.len += sizeof(*candidate);
 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 candidate = (struct wcn36xx_hal_trigger_ba_req_candidate *)
  (wcn->hal_buf + sizeof(msg_body));
 candidate->sta_index = sta_index;
 candidate->tid_bitmap = 1;

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_trigger_ba failed\n");
  goto out;
 }
 ret = wcn36xx_smd_trigger_ba_rsp(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_trigger_ba response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
