
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef size_t u8 ;
struct TYPE_2__ {int phy_rate_20; int phy_rate_40; int phy_rate_20_sgi; int phy_rate_40_sgi; } ;


 TYPE_1__* mcs_table ;

__attribute__((used)) static inline uint mcs_2_rate(u8 mcs, bool is40, bool sgi)
{
 if (sgi) {
  if (is40)
   return mcs_table[mcs].phy_rate_40_sgi;
  return mcs_table[mcs].phy_rate_20_sgi;
 }
 if (is40)
  return mcs_table[mcs].phy_rate_40;

 return mcs_table[mcs].phy_rate_20;
}
