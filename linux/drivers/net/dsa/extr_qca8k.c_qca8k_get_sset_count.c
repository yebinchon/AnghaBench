
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ETH_SS_STATS ;
 int ar8327_mib ;

__attribute__((used)) static int
qca8k_get_sset_count(struct dsa_switch *ds, int port, int sset)
{
 if (sset != ETH_SS_STATS)
  return 0;

 return ARRAY_SIZE(ar8327_mib);
}
