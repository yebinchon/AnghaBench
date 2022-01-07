
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int ETH_SS_STATS ;

__attribute__((used)) static int vsc73xx_get_sset_count(struct dsa_switch *ds, int port, int sset)
{

 if (sset != ETH_SS_STATS)
  return 0;

 return 8;
}
