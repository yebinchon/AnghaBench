
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int personality; } ;
struct qed_hwfn {int num_funcs_on_engine; int port_id; int enabled_func_idx; TYPE_1__ hw_info; TYPE_2__* cdev; } ;
typedef enum qed_resources { ____Placeholder_qed_resources } qed_resources ;
struct TYPE_4__ {int num_ports_in_engine; } ;


 int EINVAL ;
 int ETH_NUM_MAC_FILTERS ;
 int ETH_RSS_ENGINE_NUM_BB ;
 int ETH_RSS_ENGINE_NUM_K2 ;
 int MAX_NUM_L2_QUEUES_BB ;
 int MAX_NUM_L2_QUEUES_K2 ;
 int MAX_NUM_LL2_RX_QUEUES ;
 int MAX_NUM_VPORTS_BB ;
 int MAX_NUM_VPORTS_K2 ;
 int MAX_QM_GLOBAL_RLS ;
 int MAX_QM_TX_QUEUES_BB ;
 int MAX_QM_TX_QUEUES_K2 ;
 int NUM_OF_GLOBAL_QUEUES ;
 int PXP_NUM_ILT_RECORDS_BB ;
 int PXP_NUM_ILT_RECORDS_K2 ;



 int QED_IS_AH (TYPE_2__*) ;



 int QED_PCI_FCOE ;
 int QED_PCI_ISCSI ;
 int RDMA_NUM_STATISTIC_COUNTERS_BB ;
 int RDMA_NUM_STATISTIC_COUNTERS_K2 ;

__attribute__((used)) static
int qed_hw_get_dflt_resc(struct qed_hwfn *p_hwfn,
    enum qed_resources res_id,
    u32 *p_resc_num, u32 *p_resc_start)
{
 u8 num_funcs = p_hwfn->num_funcs_on_engine;
 bool b_ah = QED_IS_AH(p_hwfn->cdev);

 switch (res_id) {
 case 138:
  *p_resc_num = (b_ah ? MAX_NUM_L2_QUEUES_K2 :
          MAX_NUM_L2_QUEUES_BB) / num_funcs;
  break;
 case 128:
  *p_resc_num = (b_ah ? MAX_NUM_VPORTS_K2 :
          MAX_NUM_VPORTS_BB) / num_funcs;
  break;
 case 131:
  *p_resc_num = (b_ah ? ETH_RSS_ENGINE_NUM_K2 :
          ETH_RSS_ENGINE_NUM_BB) / num_funcs;
  break;
 case 135:
  *p_resc_num = (b_ah ? MAX_QM_TX_QUEUES_K2 :
          MAX_QM_TX_QUEUES_BB) / num_funcs;
  *p_resc_num &= ~0x7;
  break;
 case 132:
  *p_resc_num = MAX_QM_GLOBAL_RLS / num_funcs;
  break;
 case 136:
 case 129:

  *p_resc_num = ETH_NUM_MAC_FILTERS / num_funcs;
  break;
 case 139:
  *p_resc_num = (b_ah ? PXP_NUM_ILT_RECORDS_K2 :
          PXP_NUM_ILT_RECORDS_BB) / num_funcs;
  break;
 case 137:
  *p_resc_num = MAX_NUM_LL2_RX_QUEUES / num_funcs;
  break;
 case 134:
 case 140:

  *p_resc_num = NUM_OF_GLOBAL_QUEUES / num_funcs;
  break;
 case 133:
  *p_resc_num = (b_ah ? RDMA_NUM_STATISTIC_COUNTERS_K2 :
          RDMA_NUM_STATISTIC_COUNTERS_BB) / num_funcs;
  break;
 case 141:
  if (p_hwfn->hw_info.personality != QED_PCI_ISCSI &&
      p_hwfn->hw_info.personality != QED_PCI_FCOE)
   *p_resc_num = 0;
  else
   *p_resc_num = 1;
  break;
 case 130:



  *p_resc_num = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (res_id) {
 case 141:
  if (!*p_resc_num)
   *p_resc_start = 0;
  else if (p_hwfn->cdev->num_ports_in_engine == 4)
   *p_resc_start = p_hwfn->port_id;
  else if (p_hwfn->hw_info.personality == QED_PCI_ISCSI)
   *p_resc_start = p_hwfn->port_id;
  else if (p_hwfn->hw_info.personality == QED_PCI_FCOE)
   *p_resc_start = p_hwfn->port_id + 2;
  break;
 default:
  *p_resc_start = *p_resc_num * p_hwfn->enabled_func_idx;
  break;
 }

 return 0;
}
