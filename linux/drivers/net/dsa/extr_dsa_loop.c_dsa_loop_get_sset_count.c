
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int ETH_SS_PHY_STATS ;
 int ETH_SS_STATS ;
 int __DSA_LOOP_CNT_MAX ;

__attribute__((used)) static int dsa_loop_get_sset_count(struct dsa_switch *ds, int port, int sset)
{
 if (sset != ETH_SS_STATS && sset != ETH_SS_PHY_STATS)
  return 0;

 return __DSA_LOOP_CNT_MAX;
}
