
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctrl_response_len; scalar_t__ ctrl_response_buf; } ;
struct htc_target {scalar_t__ tgt_creds; scalar_t__ tgt_cred_sz; TYPE_1__ pipe; } ;
struct TYPE_6__ {int rx; int tx_complete; } ;
struct htc_service_connect_resp {int svc_id; int max_txq_depth; TYPE_3__ ep_cb; } ;
struct htc_service_connect_req {int svc_id; int max_txq_depth; TYPE_3__ ep_cb; } ;
struct TYPE_5__ {int msg_id; int cred_sz; int cred_cnt; } ;
struct htc_ready_ext_msg {TYPE_2__ ver2_0_info; } ;
typedef int resp ;
typedef int connect ;


 int ATH6KL_DBG_HTC ;
 int ECOMM ;
 int HTC_CTRL_RSVD_SVC ;
 int HTC_MSG_READY_ID ;
 int NUM_CONTROL_TX_BUFFERS ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 int ath6kl_htc_pipe_conn_service (struct htc_target*,struct htc_service_connect_resp*,struct htc_service_connect_resp*) ;
 int ath6kl_warn (char*,int) ;
 int cpu_to_le16 (int ) ;
 int htc_rxctrl_complete ;
 int htc_setup_target_buffer_assignments (struct htc_target*) ;
 int htc_txctrl_complete ;
 int htc_wait_recv_ctrl_message (struct htc_target*) ;
 void* le16_to_cpu (int ) ;
 int memset (struct htc_service_connect_resp*,int ,int) ;

__attribute__((used)) static int ath6kl_htc_pipe_wait_target(struct htc_target *target)
{
 struct htc_ready_ext_msg *ready_msg;
 struct htc_service_connect_req connect;
 struct htc_service_connect_resp resp;
 int status = 0;

 status = htc_wait_recv_ctrl_message(target);

 if (status != 0)
  return status;

 if (target->pipe.ctrl_response_len < sizeof(*ready_msg)) {
  ath6kl_warn("invalid htc pipe ready msg len: %d\n",
       target->pipe.ctrl_response_len);
  return -ECOMM;
 }

 ready_msg = (struct htc_ready_ext_msg *) target->pipe.ctrl_response_buf;

 if (ready_msg->ver2_0_info.msg_id != cpu_to_le16(HTC_MSG_READY_ID)) {
  ath6kl_warn("invalid htc pipe ready msg: 0x%x\n",
       ready_msg->ver2_0_info.msg_id);
  return -ECOMM;
 }

 ath6kl_dbg(ATH6KL_DBG_HTC,
     "Target Ready! : transmit resources : %d size:%d\n",
     ready_msg->ver2_0_info.cred_cnt,
     ready_msg->ver2_0_info.cred_sz);

 target->tgt_creds = le16_to_cpu(ready_msg->ver2_0_info.cred_cnt);
 target->tgt_cred_sz = le16_to_cpu(ready_msg->ver2_0_info.cred_sz);

 if ((target->tgt_creds == 0) || (target->tgt_cred_sz == 0))
  return -ECOMM;

 htc_setup_target_buffer_assignments(target);


 memset(&connect, 0, sizeof(connect));
 memset(&resp, 0, sizeof(resp));
 connect.ep_cb.tx_complete = htc_txctrl_complete;
 connect.ep_cb.rx = htc_rxctrl_complete;
 connect.max_txq_depth = NUM_CONTROL_TX_BUFFERS;
 connect.svc_id = HTC_CTRL_RSVD_SVC;


 status = ath6kl_htc_pipe_conn_service(target, &connect, &resp);

 return status;
}
