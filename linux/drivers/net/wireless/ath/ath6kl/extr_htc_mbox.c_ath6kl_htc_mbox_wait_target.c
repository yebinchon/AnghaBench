
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct htc_target {char* tgt_creds; scalar_t__ msg_per_bndl_max; TYPE_3__* dev; scalar_t__ htc_tgt_ver; scalar_t__ tgt_cred_sz; } ;
struct TYPE_5__ {int * tx_full; int * rx_refill; int rx; } ;
struct htc_service_connect_resp {int svc_id; int max_txq_depth; TYPE_2__ ep_cb; } ;
struct htc_service_connect_req {int svc_id; int max_txq_depth; TYPE_2__ ep_cb; } ;
struct htc_ready_msg {int dummy; } ;
struct TYPE_4__ {int cred_sz; int cred_cnt; int msg_id; } ;
struct htc_ready_ext_msg {scalar_t__ msg_per_htc_bndl; scalar_t__ htc_ver; TYPE_1__ ver2_0_info; } ;
struct htc_packet {int act_len; scalar_t__ buf; } ;
typedef int resp ;
typedef int connect ;
struct TYPE_6__ {int ar; } ;


 int ATH6KL_DBG_BOOT ;
 int ENOMEM ;
 int HTC_CTRL_RSVD_SVC ;
 scalar_t__ HTC_MSG_READY_ID ;
 scalar_t__ HTC_VERSION_2P0 ;
 int NUM_CONTROL_BUFFERS ;
 int ath6kl_dbg (int ,char*,char*,scalar_t__) ;
 int ath6kl_hif_cleanup_scatter (int ) ;
 int ath6kl_htc_mbox_conn_service (void*,struct htc_service_connect_resp*,struct htc_service_connect_resp*) ;
 int htc_ctrl_rx ;
 int htc_rxpkt_reset (struct htc_packet*) ;
 int htc_setup_msg_bndl (struct htc_target*) ;
 struct htc_packet* htc_wait_for_ctrl_msg (struct htc_target*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int memset (struct htc_service_connect_resp*,int ,int) ;
 int reclaim_rx_ctrl_buf (struct htc_target*,struct htc_packet*) ;

__attribute__((used)) static int ath6kl_htc_mbox_wait_target(struct htc_target *target)
{
 struct htc_packet *packet = ((void*)0);
 struct htc_ready_ext_msg *rdy_msg;
 struct htc_service_connect_req connect;
 struct htc_service_connect_resp resp;
 int status;


 packet = htc_wait_for_ctrl_msg(target);

 if (!packet)
  return -ENOMEM;


 rdy_msg = (struct htc_ready_ext_msg *)packet->buf;

 if ((le16_to_cpu(rdy_msg->ver2_0_info.msg_id) != HTC_MSG_READY_ID) ||
     (packet->act_len < sizeof(struct htc_ready_msg))) {
  status = -ENOMEM;
  goto fail_wait_target;
 }

 if (!rdy_msg->ver2_0_info.cred_cnt || !rdy_msg->ver2_0_info.cred_sz) {
  status = -ENOMEM;
  goto fail_wait_target;
 }

 target->tgt_creds = le16_to_cpu(rdy_msg->ver2_0_info.cred_cnt);
 target->tgt_cred_sz = le16_to_cpu(rdy_msg->ver2_0_info.cred_sz);

 ath6kl_dbg(ATH6KL_DBG_BOOT,
     "htc target ready credits %d size %d\n",
     target->tgt_creds, target->tgt_cred_sz);


 if (packet->act_len >= sizeof(struct htc_ready_ext_msg)) {

  target->htc_tgt_ver = rdy_msg->htc_ver;
  target->msg_per_bndl_max = rdy_msg->msg_per_htc_bndl;
 } else {

  target->htc_tgt_ver = HTC_VERSION_2P0;
  target->msg_per_bndl_max = 0;
 }

 ath6kl_dbg(ATH6KL_DBG_BOOT, "htc using protocol %s (%d)\n",
     (target->htc_tgt_ver == HTC_VERSION_2P0) ? "2.0" : ">= 2.1",
     target->htc_tgt_ver);

 if (target->msg_per_bndl_max > 0)
  htc_setup_msg_bndl(target);


 memset(&connect, 0, sizeof(connect));
 memset(&resp, 0, sizeof(resp));
 connect.ep_cb.rx = htc_ctrl_rx;
 connect.ep_cb.rx_refill = ((void*)0);
 connect.ep_cb.tx_full = ((void*)0);
 connect.max_txq_depth = NUM_CONTROL_BUFFERS;
 connect.svc_id = HTC_CTRL_RSVD_SVC;


 status = ath6kl_htc_mbox_conn_service((void *)target, &connect, &resp);

 if (status)




  ath6kl_hif_cleanup_scatter(target->dev->ar);

fail_wait_target:
 if (packet) {
  htc_rxpkt_reset(packet);
  reclaim_rx_ctrl_buf(target, packet);
 }

 return status;
}
