
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct qed_qm_info {int vport_rl_en; int vport_wfq_en; scalar_t__ ooo_tc; int max_phys_tcs_per_port; scalar_t__ start_vport; scalar_t__ start_pq; } ;
struct qed_hwfn {TYPE_1__* cdev; struct qed_qm_info qm_info; } ;
struct TYPE_2__ {scalar_t__ num_ports_in_engine; } ;


 scalar_t__ DCBX_TCP_OOO_K2_4PORT_TC ;
 scalar_t__ DCBX_TCP_OOO_TC ;
 scalar_t__ MAX_NUM_PORTS_K2 ;
 int NUM_OF_PHYS_TCS ;
 int NUM_PHYS_TCS_4PORT_K2 ;
 int QED_PQ ;
 int QED_VPORT ;
 scalar_t__ RESC_START (struct qed_hwfn*,int ) ;

__attribute__((used)) static void qed_init_qm_params(struct qed_hwfn *p_hwfn)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;
 bool four_port;


 qm_info->start_pq = (u16) RESC_START(p_hwfn, QED_PQ);
 qm_info->start_vport = (u8) RESC_START(p_hwfn, QED_VPORT);


 qm_info->vport_rl_en = 1;
 qm_info->vport_wfq_en = 1;


 four_port = p_hwfn->cdev->num_ports_in_engine == MAX_NUM_PORTS_K2;


 qm_info->max_phys_tcs_per_port = four_port ? NUM_PHYS_TCS_4PORT_K2 :
           NUM_OF_PHYS_TCS;




 if (!qm_info->ooo_tc)
  qm_info->ooo_tc = four_port ? DCBX_TCP_OOO_K2_4PORT_TC :
           DCBX_TCP_OOO_TC;
}
