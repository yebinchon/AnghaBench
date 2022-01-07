
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qed_iwarp_ep {scalar_t__ connect_mode; int * syn; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {scalar_t__ ll2_syn_handle; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 scalar_t__ RDMA_RETURN_OK ;
 scalar_t__ TCP_CONNECT_PASSIVE ;
 int qed_iwarp_ll2_post_rx (struct qed_hwfn*,int *,scalar_t__) ;
 int qed_iwarp_mpa_offload (struct qed_hwfn*,struct qed_iwarp_ep*) ;
 int qed_iwarp_mpa_received (struct qed_hwfn*,struct qed_iwarp_ep*) ;
 int qed_iwarp_tcp_connect_unsuccessful (struct qed_hwfn*,struct qed_iwarp_ep*,scalar_t__) ;

__attribute__((used)) static void
qed_iwarp_connect_complete(struct qed_hwfn *p_hwfn,
      struct qed_iwarp_ep *ep, u8 fw_return_code)
{
 u8 ll2_syn_handle = p_hwfn->p_rdma_info->iwarp.ll2_syn_handle;

 if (ep->connect_mode == TCP_CONNECT_PASSIVE) {

  qed_iwarp_ll2_post_rx(p_hwfn, ep->syn, ll2_syn_handle);

  ep->syn = ((void*)0);


  if (fw_return_code == RDMA_RETURN_OK)
   qed_iwarp_mpa_received(p_hwfn, ep);
  else
   qed_iwarp_tcp_connect_unsuccessful(p_hwfn, ep,
          fw_return_code);
 } else {
  if (fw_return_code == RDMA_RETURN_OK)
   qed_iwarp_mpa_offload(p_hwfn, ep);
  else
   qed_iwarp_tcp_connect_unsuccessful(p_hwfn, ep,
          fw_return_code);
 }
}
