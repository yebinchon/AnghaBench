
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_6__ {int max_msgs_per_htc_bundle; } ;
struct TYPE_5__ {int credit_size; int credit_count; } ;
struct TYPE_4__ {int message_id; } ;
struct ath10k_htc_msg {TYPE_3__ ready_ext; TYPE_2__ ready; TYPE_1__ hdr; } ;
struct ath10k_htc {int control_resp_len; int max_msgs_per_htc_bundle; void* target_credit_size; void* total_transmit_credits; scalar_t__ control_resp_buffer; int ctl_resp; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_HTC ;
 void* ATH10K_HTC_MSG_READY_ID ;
 int ATH10K_HTC_WAIT_TIMEOUT_HZ ;
 int CE_COUNT ;
 int ECOMM ;
 int ETIMEDOUT ;
 int HTC_HOST_MAX_MSG_PER_RX_BUNDLE ;
 void* __le16_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,...) ;
 int ath10k_err (struct ath10k*,char*,...) ;
 int ath10k_hif_send_complete_check (struct ath10k*,int,int) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int min_t (int ,int ,int ) ;
 int u8 ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

int ath10k_htc_wait_target(struct ath10k_htc *htc)
{
 struct ath10k *ar = htc->ar;
 int i, status = 0;
 unsigned long time_left;
 struct ath10k_htc_msg *msg;
 u16 message_id;

 time_left = wait_for_completion_timeout(&htc->ctl_resp,
      ATH10K_HTC_WAIT_TIMEOUT_HZ);
 if (!time_left) {






  ath10k_warn(ar, "failed to receive control response completion, polling..\n");

  for (i = 0; i < CE_COUNT; i++)
   ath10k_hif_send_complete_check(htc->ar, i, 1);

  time_left =
  wait_for_completion_timeout(&htc->ctl_resp,
         ATH10K_HTC_WAIT_TIMEOUT_HZ);

  if (!time_left)
   status = -ETIMEDOUT;
 }

 if (status < 0) {
  ath10k_err(ar, "ctl_resp never came in (%d)\n", status);
  return status;
 }

 if (htc->control_resp_len < sizeof(msg->hdr) + sizeof(msg->ready)) {
  ath10k_err(ar, "Invalid HTC ready msg len:%d\n",
      htc->control_resp_len);
  return -ECOMM;
 }

 msg = (struct ath10k_htc_msg *)htc->control_resp_buffer;
 message_id = __le16_to_cpu(msg->hdr.message_id);

 if (message_id != ATH10K_HTC_MSG_READY_ID) {
  ath10k_err(ar, "Invalid HTC ready msg: 0x%x\n", message_id);
  return -ECOMM;
 }

 htc->total_transmit_credits = __le16_to_cpu(msg->ready.credit_count);
 htc->target_credit_size = __le16_to_cpu(msg->ready.credit_size);

 ath10k_dbg(ar, ATH10K_DBG_HTC,
     "Target ready! transmit resources: %d size:%d\n",
     htc->total_transmit_credits,
     htc->target_credit_size);

 if ((htc->total_transmit_credits == 0) ||
     (htc->target_credit_size == 0)) {
  ath10k_err(ar, "Invalid credit size received\n");
  return -ECOMM;
 }




 if (htc->control_resp_len >=
     sizeof(msg->hdr) + sizeof(msg->ready_ext)) {
  htc->max_msgs_per_htc_bundle =
   min_t(u8, msg->ready_ext.max_msgs_per_htc_bundle,
         HTC_HOST_MAX_MSG_PER_RX_BUNDLE);
  ath10k_dbg(ar, ATH10K_DBG_HTC,
      "Extended ready message. RX bundle size: %d\n",
      htc->max_msgs_per_htc_bundle);
 }

 return 0;
}
