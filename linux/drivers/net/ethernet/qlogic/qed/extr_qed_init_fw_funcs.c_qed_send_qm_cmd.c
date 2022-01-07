
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int QM_REG_SDMCMDADDR ;
 int QM_REG_SDMCMDDATALSB ;
 int QM_REG_SDMCMDDATAMSB ;
 int QM_REG_SDMCMDGO ;
 int qed_poll_on_qm_cmd_ready (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

__attribute__((used)) static bool qed_send_qm_cmd(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       u32 cmd_addr, u32 cmd_data_lsb, u32 cmd_data_msb)
{
 if (!qed_poll_on_qm_cmd_ready(p_hwfn, p_ptt))
  return 0;

 qed_wr(p_hwfn, p_ptt, QM_REG_SDMCMDADDR, cmd_addr);
 qed_wr(p_hwfn, p_ptt, QM_REG_SDMCMDDATALSB, cmd_data_lsb);
 qed_wr(p_hwfn, p_ptt, QM_REG_SDMCMDDATAMSB, cmd_data_msb);
 qed_wr(p_hwfn, p_ptt, QM_REG_SDMCMDGO, 1);
 qed_wr(p_hwfn, p_ptt, QM_REG_SDMCMDGO, 0);

 return qed_poll_on_qm_cmd_ready(p_hwfn, p_ptt);
}
