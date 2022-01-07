
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* cdev; } ;
typedef enum qed_int_mode { ____Placeholder_qed_int_mode } qed_int_mode ;
struct TYPE_2__ {int int_mode; } ;


 int IGU_PF_CONF_ATTN_BIT_EN ;
 int IGU_PF_CONF_FUNC_EN ;
 int IGU_PF_CONF_INT_LINE_EN ;
 int IGU_PF_CONF_MSI_MSIX_EN ;
 int IGU_PF_CONF_SINGLE_ISR_EN ;
 int IGU_REG_PF_CONFIGURATION ;




 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

void qed_int_igu_enable_int(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt, enum qed_int_mode int_mode)
{
 u32 igu_pf_conf = IGU_PF_CONF_FUNC_EN | IGU_PF_CONF_ATTN_BIT_EN;

 p_hwfn->cdev->int_mode = int_mode;
 switch (p_hwfn->cdev->int_mode) {
 case 131:
  igu_pf_conf |= IGU_PF_CONF_INT_LINE_EN;
  igu_pf_conf |= IGU_PF_CONF_SINGLE_ISR_EN;
  break;

 case 130:
  igu_pf_conf |= IGU_PF_CONF_MSI_MSIX_EN;
  igu_pf_conf |= IGU_PF_CONF_SINGLE_ISR_EN;
  break;

 case 129:
  igu_pf_conf |= IGU_PF_CONF_MSI_MSIX_EN;
  break;
 case 128:
  break;
 }

 qed_wr(p_hwfn, p_ptt, IGU_REG_PF_CONFIGURATION, igu_pf_conf);
}
