
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int p_dpc_ptt; int cdev; } ;


 int DP_INFO (int ,char*,int,int,char*,int,int ,int,char*,int) ;
 int GET_FIELD (int,int ) ;
 int GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_0 ;
 int GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_1 ;
 int GRC_REG_TIMEOUT_ATTN_ACCESS_VALID ;
 int QED_GRC_ATTENTION_ADDRESS ;
 int QED_GRC_ATTENTION_MASTER ;
 int QED_GRC_ATTENTION_PF ;
 int QED_GRC_ATTENTION_PRIV ;
 int QED_GRC_ATTENTION_PRIV_VF ;
 int QED_GRC_ATTENTION_RDWR_BIT ;
 int QED_GRC_ATTENTION_VALID_BIT ;
 int QED_GRC_ATTENTION_VF ;
 int attn_master_to_str (int) ;
 int qed_rd (struct qed_hwfn*,int ,int ) ;
 int qed_wr (struct qed_hwfn*,int ,int ,int ) ;

__attribute__((used)) static int qed_grc_attn_cb(struct qed_hwfn *p_hwfn)
{
 u32 tmp, tmp2;




 tmp = qed_rd(p_hwfn, p_hwfn->p_dpc_ptt,
       GRC_REG_TIMEOUT_ATTN_ACCESS_VALID);
 if (!(tmp & QED_GRC_ATTENTION_VALID_BIT))
  goto out;


 tmp = qed_rd(p_hwfn, p_hwfn->p_dpc_ptt,
       GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_0);
 tmp2 = qed_rd(p_hwfn, p_hwfn->p_dpc_ptt,
        GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_1);

 DP_INFO(p_hwfn->cdev,
  "GRC timeout [%08x:%08x] - %s Address [%08x] [Master %s] [PF: %02x %s %02x]\n",
  tmp2, tmp,
  (tmp & QED_GRC_ATTENTION_RDWR_BIT) ? "Write to" : "Read from",
  GET_FIELD(tmp, QED_GRC_ATTENTION_ADDRESS) << 2,
  attn_master_to_str(GET_FIELD(tmp, QED_GRC_ATTENTION_MASTER)),
  GET_FIELD(tmp2, QED_GRC_ATTENTION_PF),
  (GET_FIELD(tmp2, QED_GRC_ATTENTION_PRIV) ==
   QED_GRC_ATTENTION_PRIV_VF) ? "VF" : "(Irrelevant)",
  GET_FIELD(tmp2, QED_GRC_ATTENTION_VF));

out:

 qed_wr(p_hwfn, p_hwfn->p_dpc_ptt,
        GRC_REG_TIMEOUT_ATTN_ACCESS_VALID, 0);
 return 0;
}
