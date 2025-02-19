
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vf_op_params ;
struct TYPE_6__ {int update_ipv6; int update_ipv4; int tpa_mode; int sge_pause_thr_low; int sge_pause_thr_high; int sge_buff_size; int max_tpa_queues; int max_sges_for_packet; int max_agg_size; int dont_verify_thr; int complete_on_both_clients; } ;
struct vfpf_tpa_tlv {TYPE_3__ tpa_client_info; } ;
struct bnx2x_virtf {int dummy; } ;
struct bnx2x_vf_mbx {TYPE_2__* msg; } ;
struct bnx2x_queue_update_tpa_params {int update_ipv6; int update_ipv4; int tpa_mode; int sge_pause_thr_low; int sge_pause_thr_high; int sge_buff_sz; int max_tpa_queues; int max_sges_pkt; int max_agg_sz; int dont_verify_thr; int complete_on_both_clients; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {struct vfpf_tpa_tlv update_tpa; } ;
struct TYPE_5__ {TYPE_1__ req; } ;


 scalar_t__ bnx2x_validate_tpa_params (struct bnx2x*,struct vfpf_tpa_tlv*) ;
 int bnx2x_vf_mbx_resp (struct bnx2x*,struct bnx2x_virtf*,int) ;
 int bnx2x_vf_tpa_update (struct bnx2x*,struct bnx2x_virtf*,struct vfpf_tpa_tlv*,struct bnx2x_queue_update_tpa_params*) ;
 int memset (struct bnx2x_queue_update_tpa_params*,int ,int) ;

__attribute__((used)) static void bnx2x_vf_mbx_update_tpa(struct bnx2x *bp, struct bnx2x_virtf *vf,
        struct bnx2x_vf_mbx *mbx)
{
 struct bnx2x_queue_update_tpa_params vf_op_params;
 struct vfpf_tpa_tlv *tpa_tlv = &mbx->msg->req.update_tpa;
 int rc = 0;

 memset(&vf_op_params, 0, sizeof(vf_op_params));

 if (bnx2x_validate_tpa_params(bp, tpa_tlv))
  goto mbx_resp;

 vf_op_params.complete_on_both_clients =
  tpa_tlv->tpa_client_info.complete_on_both_clients;
 vf_op_params.dont_verify_thr =
  tpa_tlv->tpa_client_info.dont_verify_thr;
 vf_op_params.max_agg_sz =
  tpa_tlv->tpa_client_info.max_agg_size;
 vf_op_params.max_sges_pkt =
  tpa_tlv->tpa_client_info.max_sges_for_packet;
 vf_op_params.max_tpa_queues =
  tpa_tlv->tpa_client_info.max_tpa_queues;
 vf_op_params.sge_buff_sz =
  tpa_tlv->tpa_client_info.sge_buff_size;
 vf_op_params.sge_pause_thr_high =
  tpa_tlv->tpa_client_info.sge_pause_thr_high;
 vf_op_params.sge_pause_thr_low =
  tpa_tlv->tpa_client_info.sge_pause_thr_low;
 vf_op_params.tpa_mode =
  tpa_tlv->tpa_client_info.tpa_mode;
 vf_op_params.update_ipv4 =
  tpa_tlv->tpa_client_info.update_ipv4;
 vf_op_params.update_ipv6 =
  tpa_tlv->tpa_client_info.update_ipv6;

 rc = bnx2x_vf_tpa_update(bp, vf, tpa_tlv, &vf_op_params);

mbx_resp:
 bnx2x_vf_mbx_resp(bp, vf, rc);
}
