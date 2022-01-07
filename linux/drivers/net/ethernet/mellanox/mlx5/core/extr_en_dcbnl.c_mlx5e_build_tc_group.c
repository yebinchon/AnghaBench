
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee_ets {int* tc_tsa; scalar_t__* tc_tx_bw; } ;





 int MLX5E_LOWEST_PRIO_GROUP ;
 int MLX5E_VENDOR_TC_GROUP_NUM ;

__attribute__((used)) static void mlx5e_build_tc_group(struct ieee_ets *ets, u8 *tc_group, int max_tc)
{
 bool any_tc_mapped_to_ets = 0;
 bool ets_zero_bw = 0;
 int strict_group;
 int i;

 for (i = 0; i <= max_tc; i++) {
  if (ets->tc_tsa[i] == 130) {
   any_tc_mapped_to_ets = 1;
   if (!ets->tc_tx_bw[i])
    ets_zero_bw = 1;
  }
 }


 strict_group = MLX5E_LOWEST_PRIO_GROUP;
 if (any_tc_mapped_to_ets)
  strict_group++;
 if (ets_zero_bw)
  strict_group++;

 for (i = 0; i <= max_tc; i++) {
  switch (ets->tc_tsa[i]) {
  case 128:
   tc_group[i] = MLX5E_VENDOR_TC_GROUP_NUM;
   break;
  case 129:
   tc_group[i] = strict_group++;
   break;
  case 130:
   tc_group[i] = MLX5E_LOWEST_PRIO_GROUP;
   if (ets->tc_tx_bw[i] && ets_zero_bw)
    tc_group[i] = MLX5E_LOWEST_PRIO_GROUP + 1;
   break;
  }
 }
}
