
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qed_ll2_rx_packet {int dummy; } ;
struct TYPE_4__ {int rx_num_desc; int conn_type; } ;
struct TYPE_3__ {int rcq_chain; struct qed_ll2_rx_packet* descq_array; int rxq_chain; } ;
struct qed_ll2_info {TYPE_2__ input; TYPE_1__ rx_queue; } ;
struct qed_hwfn {int cdev; } ;
struct core_rx_fast_path_cqe {int dummy; } ;
struct core_rx_bd {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_CHAIN_CNT_TYPE_U16 ;
 int QED_CHAIN_MODE_NEXT_PTR ;
 int QED_CHAIN_MODE_PBL ;
 int QED_CHAIN_USE_TO_CONSUME_PRODUCE ;
 int QED_MSG_LL2 ;
 struct qed_ll2_rx_packet* kcalloc (int ,int,int ) ;
 int qed_chain_alloc (int ,int ,int ,int ,int ,int,int *,int *) ;
 int qed_chain_get_capacity (int *) ;

__attribute__((used)) static int
qed_ll2_acquire_connection_rx(struct qed_hwfn *p_hwfn,
         struct qed_ll2_info *p_ll2_info)
{
 struct qed_ll2_rx_packet *p_descq;
 u32 capacity;
 int rc = 0;

 if (!p_ll2_info->input.rx_num_desc)
  goto out;

 rc = qed_chain_alloc(p_hwfn->cdev,
        QED_CHAIN_USE_TO_CONSUME_PRODUCE,
        QED_CHAIN_MODE_NEXT_PTR,
        QED_CHAIN_CNT_TYPE_U16,
        p_ll2_info->input.rx_num_desc,
        sizeof(struct core_rx_bd),
        &p_ll2_info->rx_queue.rxq_chain, ((void*)0));
 if (rc) {
  DP_NOTICE(p_hwfn, "Failed to allocate ll2 rxq chain\n");
  goto out;
 }

 capacity = qed_chain_get_capacity(&p_ll2_info->rx_queue.rxq_chain);
 p_descq = kcalloc(capacity, sizeof(struct qed_ll2_rx_packet),
     GFP_KERNEL);
 if (!p_descq) {
  rc = -ENOMEM;
  DP_NOTICE(p_hwfn, "Failed to allocate ll2 Rx desc\n");
  goto out;
 }
 p_ll2_info->rx_queue.descq_array = p_descq;

 rc = qed_chain_alloc(p_hwfn->cdev,
        QED_CHAIN_USE_TO_CONSUME_PRODUCE,
        QED_CHAIN_MODE_PBL,
        QED_CHAIN_CNT_TYPE_U16,
        p_ll2_info->input.rx_num_desc,
        sizeof(struct core_rx_fast_path_cqe),
        &p_ll2_info->rx_queue.rcq_chain, ((void*)0));
 if (rc) {
  DP_NOTICE(p_hwfn, "Failed to allocate ll2 rcq chain\n");
  goto out;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_LL2,
     "Allocated LL2 Rxq [Type %08x] with 0x%08x buffers\n",
     p_ll2_info->input.conn_type, p_ll2_info->input.rx_num_desc);

out:
 return rc;
}
