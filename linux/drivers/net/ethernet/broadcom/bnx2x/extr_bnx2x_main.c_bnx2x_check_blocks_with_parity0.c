
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;
 scalar_t__ BRB1_REG_BRB1_PRTY_STS ;
 scalar_t__ GRCBASE_XPB ;
 scalar_t__ PB_REG_PB_PRTY_STS ;
 scalar_t__ PRS_REG_PRS_PRTY_STS ;
 scalar_t__ SRC_REG_SRC_PRTY_STS ;
 scalar_t__ TCM_REG_TCM_PRTY_STS ;
 scalar_t__ TSDM_REG_TSDM_PRTY_STS ;
 scalar_t__ TSEM_REG_TSEM_PRTY_STS_0 ;
 scalar_t__ TSEM_REG_TSEM_PRTY_STS_1 ;
 int _print_next_block (int ,char*) ;
 int _print_parity (struct bnx2x*,scalar_t__) ;

__attribute__((used)) static bool bnx2x_check_blocks_with_parity0(struct bnx2x *bp, u32 sig,
         int *par_num, bool print)
{
 u32 cur_bit;
 bool res;
 int i;

 res = 0;

 for (i = 0; sig; i++) {
  cur_bit = (0x1UL << i);
  if (sig & cur_bit) {
   res |= 1;

   if (print) {
    switch (cur_bit) {
    case 134:
     _print_next_block((*par_num)++, "BRB");
     _print_parity(bp,
            BRB1_REG_BRB1_PRTY_STS);
     break;
    case 133:
     _print_next_block((*par_num)++,
         "PARSER");
     _print_parity(bp, PRS_REG_PRS_PRTY_STS);
     break;
    case 129:
     _print_next_block((*par_num)++, "TSDM");
     _print_parity(bp,
            TSDM_REG_TSDM_PRTY_STS);
     break;
    case 131:
     _print_next_block((*par_num)++,
         "SEARCHER");
     _print_parity(bp, SRC_REG_SRC_PRTY_STS);
     break;
    case 130:
     _print_next_block((*par_num)++, "TCM");
     _print_parity(bp, TCM_REG_TCM_PRTY_STS);
     break;
    case 128:
     _print_next_block((*par_num)++,
         "TSEMI");
     _print_parity(bp,
            TSEM_REG_TSEM_PRTY_STS_0);
     _print_parity(bp,
            TSEM_REG_TSEM_PRTY_STS_1);
     break;
    case 132:
     _print_next_block((*par_num)++, "XPB");
     _print_parity(bp, GRCBASE_XPB +
         PB_REG_PB_PRTY_STS);
     break;
    }
   }


   sig &= ~cur_bit;
  }
 }

 return res;
}
