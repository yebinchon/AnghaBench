
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;
 scalar_t__ CCM_REG_CCM_PRTY_STS ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ CSDM_REG_CSDM_PRTY_STS ;
 scalar_t__ DBG_REG_DBG_PRTY_STS ;
 scalar_t__ DORQ_REG_DORQ_PRTY_STS ;
 scalar_t__ GRCBASE_UPB ;
 scalar_t__ NIG_REG_NIG_PRTY_STS ;
 scalar_t__ NIG_REG_NIG_PRTY_STS_0 ;
 scalar_t__ NIG_REG_NIG_PRTY_STS_1 ;
 scalar_t__ PBF_REG_PBF_PRTY_STS ;
 scalar_t__ PB_REG_PB_PRTY_STS ;
 scalar_t__ QM_REG_QM_PRTY_STS ;
 scalar_t__ TM_REG_TM_PRTY_STS ;
 scalar_t__ UCM_REG_UCM_PRTY_STS ;
 scalar_t__ USDM_REG_USDM_PRTY_STS ;
 scalar_t__ USEM_REG_USEM_PRTY_STS_0 ;
 scalar_t__ USEM_REG_USEM_PRTY_STS_1 ;
 scalar_t__ XCM_REG_XCM_PRTY_STS ;
 scalar_t__ XSDM_REG_XSDM_PRTY_STS ;
 scalar_t__ XSEM_REG_XSEM_PRTY_STS_0 ;
 scalar_t__ XSEM_REG_XSEM_PRTY_STS_1 ;
 int _print_next_block (int ,char*) ;
 int _print_parity (struct bnx2x*,scalar_t__) ;

__attribute__((used)) static bool bnx2x_check_blocks_with_parity1(struct bnx2x *bp, u32 sig,
         int *par_num, bool *global,
         bool print)
{
 u32 cur_bit;
 bool res;
 int i;

 res = 0;

 for (i = 0; sig; i++) {
  cur_bit = (0x1UL << i);
  if (sig & cur_bit) {
   res |= 1;
   switch (cur_bit) {
   case 138:
    if (print) {
     _print_next_block((*par_num)++, "PBF");
     _print_parity(bp, PBF_REG_PBF_PRTY_STS);
    }
    break;
   case 137:
    if (print) {
     _print_next_block((*par_num)++, "QM");
     _print_parity(bp, QM_REG_QM_PRTY_STS);
    }
    break;
   case 136:
    if (print) {
     _print_next_block((*par_num)++, "TM");
     _print_parity(bp, TM_REG_TM_PRTY_STS);
    }
    break;
   case 129:
    if (print) {
     _print_next_block((*par_num)++, "XSDM");
     _print_parity(bp,
            XSDM_REG_XSDM_PRTY_STS);
    }
    break;
   case 130:
    if (print) {
     _print_next_block((*par_num)++, "XCM");
     _print_parity(bp, XCM_REG_XCM_PRTY_STS);
    }
    break;
   case 128:
    if (print) {
     _print_next_block((*par_num)++,
         "XSEMI");
     _print_parity(bp,
            XSEM_REG_XSEM_PRTY_STS_0);
     _print_parity(bp,
            XSEM_REG_XSEM_PRTY_STS_1);
    }
    break;
   case 140:
    if (print) {
     _print_next_block((*par_num)++,
         "DOORBELLQ");
     _print_parity(bp,
            DORQ_REG_DORQ_PRTY_STS);
    }
    break;
   case 139:
    if (print) {
     _print_next_block((*par_num)++, "NIG");
     if (CHIP_IS_E1x(bp)) {
      _print_parity(bp,
       NIG_REG_NIG_PRTY_STS);
     } else {
      _print_parity(bp,
       NIG_REG_NIG_PRTY_STS_0);
      _print_parity(bp,
       NIG_REG_NIG_PRTY_STS_1);
     }
    }
    break;
   case 131:
    if (print)
     _print_next_block((*par_num)++,
         "VAUX PCI CORE");
    *global = 1;
    break;
   case 141:
    if (print) {
     _print_next_block((*par_num)++,
         "DEBUG");
     _print_parity(bp, DBG_REG_DBG_PRTY_STS);
    }
    break;
   case 133:
    if (print) {
     _print_next_block((*par_num)++, "USDM");
     _print_parity(bp,
            USDM_REG_USDM_PRTY_STS);
    }
    break;
   case 135:
    if (print) {
     _print_next_block((*par_num)++, "UCM");
     _print_parity(bp, UCM_REG_UCM_PRTY_STS);
    }
    break;
   case 132:
    if (print) {
     _print_next_block((*par_num)++,
         "USEMI");
     _print_parity(bp,
            USEM_REG_USEM_PRTY_STS_0);
     _print_parity(bp,
            USEM_REG_USEM_PRTY_STS_1);
    }
    break;
   case 134:
    if (print) {
     _print_next_block((*par_num)++, "UPB");
     _print_parity(bp, GRCBASE_UPB +
         PB_REG_PB_PRTY_STS);
    }
    break;
   case 142:
    if (print) {
     _print_next_block((*par_num)++, "CSDM");
     _print_parity(bp,
            CSDM_REG_CSDM_PRTY_STS);
    }
    break;
   case 143:
    if (print) {
     _print_next_block((*par_num)++, "CCM");
     _print_parity(bp, CCM_REG_CCM_PRTY_STS);
    }
    break;
   }


   sig &= ~cur_bit;
  }
 }

 return res;
}
