
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MB4H_A9WDOG_KICK ;
 int prcmu_a9wdog (int ,int ,int ,int ,int ) ;

int db8500_prcmu_kick_a9wdog(u8 id)
{
 return prcmu_a9wdog(MB4H_A9WDOG_KICK, id, 0, 0, 0);
}
