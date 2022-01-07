
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qed_iwarp_ll2_buff {struct qed_iwarp_ll2_buff* piggy_buf; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {scalar_t__ ll2_mpa_handle; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int qed_iwarp_ll2_post_rx (struct qed_hwfn*,struct qed_iwarp_ll2_buff*,scalar_t__) ;
 int qed_iwarp_process_pending_pkts (struct qed_hwfn*) ;

__attribute__((used)) static void qed_iwarp_ll2_comp_tx_pkt(void *cxt, u8 connection_handle,
          void *cookie, dma_addr_t first_frag_addr,
          bool b_last_fragment, bool b_last_packet)
{
 struct qed_iwarp_ll2_buff *buffer = cookie;
 struct qed_iwarp_ll2_buff *piggy;
 struct qed_hwfn *p_hwfn = cxt;

 if (!buffer)
  return;


 piggy = buffer->piggy_buf;
 if (piggy) {
  buffer->piggy_buf = ((void*)0);
  qed_iwarp_ll2_post_rx(p_hwfn, piggy, connection_handle);
 }

 qed_iwarp_ll2_post_rx(p_hwfn, buffer, connection_handle);

 if (connection_handle == p_hwfn->p_rdma_info->iwarp.ll2_mpa_handle)
  qed_iwarp_process_pending_pkts(p_hwfn);

 return;
}
