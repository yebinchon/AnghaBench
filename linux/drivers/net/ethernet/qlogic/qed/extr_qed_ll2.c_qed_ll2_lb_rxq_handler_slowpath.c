
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int p_ooo_info; } ;
struct ooo_opaque {scalar_t__ ooo_opcode; int cid; } ;
struct core_rx_slow_path_cqe {scalar_t__ ramrod_cmd_id; int opaque_data; } ;


 scalar_t__ CORE_RAMROD_RX_QUEUE_FLUSH ;
 scalar_t__ TCP_EVENT_DELETE_ISLES ;
 int le32_to_cpu (int ) ;
 int qed_ooo_release_connection_isles (struct qed_hwfn*,int ,int ) ;

__attribute__((used)) static bool
qed_ll2_lb_rxq_handler_slowpath(struct qed_hwfn *p_hwfn,
    struct core_rx_slow_path_cqe *p_cqe)
{
 struct ooo_opaque *iscsi_ooo;
 u32 cid;

 if (p_cqe->ramrod_cmd_id != CORE_RAMROD_RX_QUEUE_FLUSH)
  return 0;

 iscsi_ooo = (struct ooo_opaque *)&p_cqe->opaque_data;
 if (iscsi_ooo->ooo_opcode != TCP_EVENT_DELETE_ISLES)
  return 0;


 cid = le32_to_cpu(iscsi_ooo->cid);
 qed_ooo_release_connection_isles(p_hwfn, p_hwfn->p_ooo_info, cid);

 return 1;
}
