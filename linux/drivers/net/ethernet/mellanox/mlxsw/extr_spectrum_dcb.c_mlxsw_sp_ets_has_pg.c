
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int IEEE_8021QAZ_MAX_TCS ;

__attribute__((used)) static bool mlxsw_sp_ets_has_pg(u8 *prio_tc, u8 pg)
{
 int i;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
  if (prio_tc[i] == pg)
   return 1;
 return 0;
}
