
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_hwfn {int cdev; int p_dpc_ptt; } ;


 int ATTENTION_INCORRECT_ACCESS_BYTE_EN ;
 int ATTENTION_INCORRECT_ACCESS_CLIENT ;
 int ATTENTION_INCORRECT_ACCESS_PF_ID ;
 int ATTENTION_INCORRECT_ACCESS_VF_ID ;
 int ATTENTION_INCORRECT_ACCESS_VF_VALID ;
 int ATTENTION_INCORRECT_ACCESS_WR ;
 int DP_INFO (int ,char*,int,int,int ,int ,int ,int ,int ,int ,int) ;
 scalar_t__ GET_FIELD (int,int ) ;
 int PSWHST_REG_INCORRECT_ACCESS_ADDRESS ;
 int PSWHST_REG_INCORRECT_ACCESS_DATA ;
 int PSWHST_REG_INCORRECT_ACCESS_LENGTH ;
 int PSWHST_REG_INCORRECT_ACCESS_VALID ;
 int QED_PSWHST_ATTENTION_INCORRECT_ACCESS ;
 int qed_rd (struct qed_hwfn*,int ,int ) ;

__attribute__((used)) static int qed_pswhst_attn_cb(struct qed_hwfn *p_hwfn)
{
 u32 tmp = qed_rd(p_hwfn, p_hwfn->p_dpc_ptt,
    PSWHST_REG_INCORRECT_ACCESS_VALID);

 if (tmp & QED_PSWHST_ATTENTION_INCORRECT_ACCESS) {
  u32 addr, data, length;

  addr = qed_rd(p_hwfn, p_hwfn->p_dpc_ptt,
         PSWHST_REG_INCORRECT_ACCESS_ADDRESS);
  data = qed_rd(p_hwfn, p_hwfn->p_dpc_ptt,
         PSWHST_REG_INCORRECT_ACCESS_DATA);
  length = qed_rd(p_hwfn, p_hwfn->p_dpc_ptt,
    PSWHST_REG_INCORRECT_ACCESS_LENGTH);

  DP_INFO(p_hwfn->cdev,
   "Incorrect access to %08x of length %08x - PF [%02x] VF [%04x] [valid %02x] client [%02x] write [%02x] Byte-Enable [%04x] [%08x]\n",
   addr, length,
   (u8) GET_FIELD(data, ATTENTION_INCORRECT_ACCESS_PF_ID),
   (u8) GET_FIELD(data, ATTENTION_INCORRECT_ACCESS_VF_ID),
   (u8) GET_FIELD(data,
           ATTENTION_INCORRECT_ACCESS_VF_VALID),
   (u8) GET_FIELD(data,
           ATTENTION_INCORRECT_ACCESS_CLIENT),
   (u8) GET_FIELD(data, ATTENTION_INCORRECT_ACCESS_WR),
   (u8) GET_FIELD(data,
           ATTENTION_INCORRECT_ACCESS_BYTE_EN),
   data);
 }

 return 0;
}
