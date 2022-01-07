
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;






 int MISC_REG_AEU_CLR_LATCH_SIGNAL ;
 int REG_WR (struct bnx2x*,int ,unsigned long) ;
 int _print_next_block (int ,char*) ;

__attribute__((used)) static bool bnx2x_check_blocks_with_parity3(struct bnx2x *bp, u32 sig,
         int *par_num, bool *global,
         bool print)
{
 bool res = 0;
 u32 cur_bit;
 int i;

 for (i = 0; sig; i++) {
  cur_bit = (0x1UL << i);
  if (sig & cur_bit) {
   switch (cur_bit) {
   case 131:
    if (print)
     _print_next_block((*par_num)++,
         "MCP ROM");
    *global = 1;
    res = 1;
    break;
   case 129:
    if (print)
     _print_next_block((*par_num)++,
         "MCP UMP RX");
    *global = 1;
    res = 1;
    break;
   case 128:
    if (print)
     _print_next_block((*par_num)++,
         "MCP UMP TX");
    *global = 1;
    res = 1;
    break;
   case 130:
    (*par_num)++;

    REG_WR(bp, MISC_REG_AEU_CLR_LATCH_SIGNAL,
           1UL << 10);
    break;
   }


   sig &= ~cur_bit;
  }
 }

 return res;
}
