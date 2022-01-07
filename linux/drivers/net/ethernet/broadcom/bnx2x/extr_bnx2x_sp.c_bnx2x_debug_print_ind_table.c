
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_config_rss_params {int * ind_table; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,...) ;
 int DP_CONT (int ,char*,...) ;
 int T_ETH_INDIRECTION_TABLE_SIZE ;

__attribute__((used)) static inline void bnx2x_debug_print_ind_table(struct bnx2x *bp,
     struct bnx2x_config_rss_params *p)
{
 int i;

 DP(BNX2X_MSG_SP, "Setting indirection table to:\n");
 DP(BNX2X_MSG_SP, "0x0000: ");
 for (i = 0; i < T_ETH_INDIRECTION_TABLE_SIZE; i++) {
  DP_CONT(BNX2X_MSG_SP, "0x%02x ", p->ind_table[i]);


  if ((i + 1 < T_ETH_INDIRECTION_TABLE_SIZE) &&
      (((i + 1) & 0x3) == 0)) {
   DP_CONT(BNX2X_MSG_SP, "\n");
   DP(BNX2X_MSG_SP, "0x%04x: ", i + 1);
  }
 }

 DP_CONT(BNX2X_MSG_SP, "\n");
}
