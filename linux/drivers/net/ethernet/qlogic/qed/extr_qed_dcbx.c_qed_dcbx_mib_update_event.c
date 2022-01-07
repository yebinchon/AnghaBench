
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct qed_ptt {int dummy; } ;
struct TYPE_4__ {scalar_t__ personality; } ;
struct qed_hwfn {TYPE_2__* p_dcbx_info; TYPE_1__ hw_info; } ;
struct qed_dcbx_results {TYPE_3__* arr; } ;
typedef enum qed_mib_read_type { ____Placeholder_qed_mib_read_type } qed_mib_read_type ;
struct TYPE_6__ {int tc; } ;
struct TYPE_5__ {struct qed_dcbx_results results; int get; } ;


 size_t DCBX_PROTOCOL_ROCE ;
 size_t DCBX_PROTOCOL_ROCE_V2 ;
 int NIG_REG_TX_EDPM_CTRL ;
 int NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN ;
 int NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT ;
 int QED_DCBX_OPERATIONAL_MIB ;
 scalar_t__ QED_PCI_ETH_ROCE ;
 int qed_dcbx_aen (struct qed_hwfn*,int) ;
 int qed_dcbx_get_params (struct qed_hwfn*,int *,int) ;
 int qed_dcbx_process_mib_info (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_dcbx_read_mib (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_qm_reconf (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_roce_dpm_dcbx (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_sp_pf_update (struct qed_hwfn*) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

int
qed_dcbx_mib_update_event(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt, enum qed_mib_read_type type)
{
 int rc = 0;

 rc = qed_dcbx_read_mib(p_hwfn, p_ptt, type);
 if (rc)
  return rc;

 if (type == QED_DCBX_OPERATIONAL_MIB) {
  rc = qed_dcbx_process_mib_info(p_hwfn, p_ptt);
  if (!rc) {



   qed_qm_reconf(p_hwfn, p_ptt);


   qed_sp_pf_update(p_hwfn);




   if (p_hwfn->hw_info.personality ==
       QED_PCI_ETH_ROCE)
    qed_roce_dpm_dcbx(p_hwfn, p_ptt);
  }
 }

 qed_dcbx_get_params(p_hwfn, &p_hwfn->p_dcbx_info->get, type);

 if (type == QED_DCBX_OPERATIONAL_MIB) {
  struct qed_dcbx_results *p_data;
  u16 val;




  p_data = &p_hwfn->p_dcbx_info->results;
  val = (0x1 << p_data->arr[DCBX_PROTOCOL_ROCE].tc) |
        (0x1 << p_data->arr[DCBX_PROTOCOL_ROCE_V2].tc);
  val <<= NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT;
  val |= NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN;
  qed_wr(p_hwfn, p_ptt, NIG_REG_TX_EDPM_CTRL, val);
 }

 qed_dcbx_aen(p_hwfn, type);

 return rc;
}
