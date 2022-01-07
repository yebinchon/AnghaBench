
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x_mcast_ramrod_params {int dummy; } ;
struct bnx2x_mcast_obj {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_57711_SET_MC_FILTER (int *,int) ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*,int) ;
 int bnx2x_mcast_get_next_bin (struct bnx2x_mcast_obj*,int) ;

__attribute__((used)) static inline void bnx2x_mcast_hdl_restore_e1h(struct bnx2x *bp,
 struct bnx2x_mcast_obj *o, struct bnx2x_mcast_ramrod_params *p,
 u32 *mc_filter)
{
 int bit;

 for (bit = bnx2x_mcast_get_next_bin(o, 0);
      bit >= 0;
      bit = bnx2x_mcast_get_next_bin(o, bit + 1)) {
  BNX2X_57711_SET_MC_FILTER(mc_filter, bit);
  DP(BNX2X_MSG_SP, "About to set bin %d\n", bit);
 }
}
