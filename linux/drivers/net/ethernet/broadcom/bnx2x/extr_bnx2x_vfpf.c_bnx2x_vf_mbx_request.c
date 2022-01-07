
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bnx2x_virtf {scalar_t__ state; int abs_vfid; } ;
struct TYPE_9__ {int type; int length; } ;
struct TYPE_10__ {TYPE_4__ tl; } ;
struct bnx2x_vf_mbx {TYPE_5__ first_tlv; TYPE_3__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {int * tlv_buffer; } ;
struct TYPE_7__ {TYPE_1__ tlv_buf_size; } ;
struct TYPE_8__ {TYPE_2__ req; } ;


 int BNX2X_ERR (char*,int,int ,scalar_t__) ;
 int BNX2X_MSG_IOV ;
 int DP_CONT (int ,char*,int ) ;
 int PFVF_STATUS_NOT_SUPPORTED ;
 scalar_t__ VF_ACQUIRED ;
 scalar_t__ VF_ENABLED ;
 int bnx2x_lock_vf_pf_channel (struct bnx2x*,struct bnx2x_virtf*,int) ;
 scalar_t__ bnx2x_tlv_supported (int) ;
 int bnx2x_unlock_vf_pf_channel (struct bnx2x*,struct bnx2x_virtf*,int) ;
 int bnx2x_vf_mbx_acquire (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_close_vf (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_init_vf (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_release_vf (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_resp (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_vf_mbx_set_q_filters (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_setup_q (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_teardown_q (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_update_rss (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_update_tpa (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int storm_memset_vf_mbx_ack (struct bnx2x*,int ) ;

__attribute__((used)) static void bnx2x_vf_mbx_request(struct bnx2x *bp, struct bnx2x_virtf *vf,
      struct bnx2x_vf_mbx *mbx)
{
 int i;


 if (bnx2x_tlv_supported(mbx->first_tlv.tl.type)) {



  bnx2x_lock_vf_pf_channel(bp, vf, mbx->first_tlv.tl.type);


  switch (mbx->first_tlv.tl.type) {
  case 136:
   bnx2x_vf_mbx_acquire(bp, vf, mbx);
   return;
  case 134:
   bnx2x_vf_mbx_init_vf(bp, vf, mbx);
   return;
  case 132:
   bnx2x_vf_mbx_setup_q(bp, vf, mbx);
   return;
  case 131:
   bnx2x_vf_mbx_set_q_filters(bp, vf, mbx);
   return;
  case 130:
   bnx2x_vf_mbx_teardown_q(bp, vf, mbx);
   return;
  case 135:
   bnx2x_vf_mbx_close_vf(bp, vf, mbx);
   return;
  case 133:
   bnx2x_vf_mbx_release_vf(bp, vf, mbx);
   return;
  case 129:
   bnx2x_vf_mbx_update_rss(bp, vf, mbx);
   return;
  case 128:
   bnx2x_vf_mbx_update_tpa(bp, vf, mbx);
   return;
  }

 } else {






  BNX2X_ERR("unknown TLV. type %d length %d vf->state was %d. first 20 bytes of mailbox buffer:\n",
     mbx->first_tlv.tl.type, mbx->first_tlv.tl.length,
     vf->state);
  for (i = 0; i < 20; i++)
   DP_CONT(BNX2X_MSG_IOV, "%x ",
    mbx->msg->req.tlv_buf_size.tlv_buffer[i]);
 }


 if (vf->state == VF_ACQUIRED || vf->state == VF_ENABLED) {

  bnx2x_vf_mbx_resp(bp, vf, PFVF_STATUS_NOT_SUPPORTED);
 } else {




  storm_memset_vf_mbx_ack(bp, vf->abs_vfid);

  bnx2x_unlock_vf_pf_channel(bp, vf, mbx->first_tlv.tl.type);
 }
}
