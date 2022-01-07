
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee_ets {int* tc_tsa; int* tc_tx_bw; } ;





 int MLX5E_MAX_BW_ALLOC ;

__attribute__((used)) static void mlx5e_build_tc_tx_bw(struct ieee_ets *ets, u8 *tc_tx_bw,
     u8 *tc_group, int max_tc)
{
 int bw_for_ets_zero_bw_tc = 0;
 int last_ets_zero_bw_tc = -1;
 int num_ets_zero_bw = 0;
 int i;

 for (i = 0; i <= max_tc; i++) {
  if (ets->tc_tsa[i] == 130 &&
      !ets->tc_tx_bw[i]) {
   num_ets_zero_bw++;
   last_ets_zero_bw_tc = i;
  }
 }

 if (num_ets_zero_bw)
  bw_for_ets_zero_bw_tc = MLX5E_MAX_BW_ALLOC / num_ets_zero_bw;

 for (i = 0; i <= max_tc; i++) {
  switch (ets->tc_tsa[i]) {
  case 128:
   tc_tx_bw[i] = MLX5E_MAX_BW_ALLOC;
   break;
  case 129:
   tc_tx_bw[i] = MLX5E_MAX_BW_ALLOC;
   break;
  case 130:
   tc_tx_bw[i] = ets->tc_tx_bw[i] ?
          ets->tc_tx_bw[i] :
          bw_for_ets_zero_bw_tc;
   break;
  }
 }


 if (last_ets_zero_bw_tc != -1)
  tc_tx_bw[last_ets_zero_bw_tc] +=
   MLX5E_MAX_BW_ALLOC % num_ets_zero_bw;
}
