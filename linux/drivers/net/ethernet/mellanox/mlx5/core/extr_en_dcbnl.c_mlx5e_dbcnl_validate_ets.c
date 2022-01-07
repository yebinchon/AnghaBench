
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee_ets {scalar_t__* prio_tc; scalar_t__* tc_tsa; scalar_t__* tc_tx_bw; } ;


 int EINVAL ;
 int IEEE_8021QAZ_MAX_TCS ;
 scalar_t__ IEEE_8021QAZ_TSA_ETS ;
 scalar_t__ MLX5E_MAX_PRIORITY ;
 int netdev_err (struct net_device*,char*,...) ;

__attribute__((used)) static int mlx5e_dbcnl_validate_ets(struct net_device *netdev,
        struct ieee_ets *ets,
        bool zero_sum_allowed)
{
 bool have_ets_tc = 0;
 int bw_sum = 0;
 int i;


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  if (ets->prio_tc[i] >= MLX5E_MAX_PRIORITY) {
   netdev_err(netdev,
       "Failed to validate ETS: priority value greater than max(%d)\n",
        MLX5E_MAX_PRIORITY);
   return -EINVAL;
  }
 }


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  if (ets->tc_tsa[i] == IEEE_8021QAZ_TSA_ETS) {
   have_ets_tc = 1;
   bw_sum += ets->tc_tx_bw[i];
  }
 }

 if (have_ets_tc && bw_sum != 100) {
  if (bw_sum || (!bw_sum && !zero_sum_allowed))
   netdev_err(netdev,
       "Failed to validate ETS: BW sum is illegal\n");
  return -EINVAL;
 }
 return 0;
}
