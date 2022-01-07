
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ ord; scalar_t__ ird; } ;
struct qed_iwarp_ep {int rtr_type; TYPE_2__ cm_info; TYPE_1__* ep_buffer_virt; int mpa_rev; } ;
struct qed_hwfn {int dummy; } ;
struct mpa_v2_hdr {void* ord; void* ird; } ;
struct TYPE_3__ {scalar_t__ out_pdata; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,void*,void*,int ,int,int,int,int,int,int) ;
 scalar_t__ MPA_REV2 (int ) ;
 int MPA_RTR_TYPE_NONE ;
 int MPA_RTR_TYPE_ZERO_READ ;
 int MPA_RTR_TYPE_ZERO_SEND ;
 int MPA_RTR_TYPE_ZERO_WRITE ;
 int MPA_V2_IRD_ORD_MASK ;
 int MPA_V2_PEER2PEER_MODEL ;
 int MPA_V2_READ_RTR ;
 int MPA_V2_SEND_RTR ;
 int MPA_V2_WRITE_RTR ;
 int QED_MSG_RDMA ;
 void* htons (int) ;

__attribute__((used)) static void
qed_iwarp_mpa_v2_set_private(struct qed_hwfn *p_hwfn,
        struct qed_iwarp_ep *ep, u8 *mpa_data_size)
{
 struct mpa_v2_hdr *mpa_v2_params;
 u16 mpa_ird, mpa_ord;

 *mpa_data_size = 0;
 if (MPA_REV2(ep->mpa_rev)) {
  mpa_v2_params =
      (struct mpa_v2_hdr *)ep->ep_buffer_virt->out_pdata;
  *mpa_data_size = sizeof(*mpa_v2_params);

  mpa_ird = (u16)ep->cm_info.ird;
  mpa_ord = (u16)ep->cm_info.ord;

  if (ep->rtr_type != MPA_RTR_TYPE_NONE) {
   mpa_ird |= MPA_V2_PEER2PEER_MODEL;

   if (ep->rtr_type & MPA_RTR_TYPE_ZERO_SEND)
    mpa_ird |= MPA_V2_SEND_RTR;

   if (ep->rtr_type & MPA_RTR_TYPE_ZERO_WRITE)
    mpa_ord |= MPA_V2_WRITE_RTR;

   if (ep->rtr_type & MPA_RTR_TYPE_ZERO_READ)
    mpa_ord |= MPA_V2_READ_RTR;
  }

  mpa_v2_params->ird = htons(mpa_ird);
  mpa_v2_params->ord = htons(mpa_ord);

  DP_VERBOSE(p_hwfn,
      QED_MSG_RDMA,
      "MPA_NEGOTIATE Header: [%x ord:%x ird] %x ord:%x ird:%x peer2peer:%x rtr_send:%x rtr_write:%x rtr_read:%x\n",
      mpa_v2_params->ird,
      mpa_v2_params->ord,
      *((u32 *)mpa_v2_params),
      mpa_ord & MPA_V2_IRD_ORD_MASK,
      mpa_ird & MPA_V2_IRD_ORD_MASK,
      !!(mpa_ird & MPA_V2_PEER2PEER_MODEL),
      !!(mpa_ird & MPA_V2_SEND_RTR),
      !!(mpa_ord & MPA_V2_WRITE_RTR),
      !!(mpa_ord & MPA_V2_READ_RTR));
 }
}
