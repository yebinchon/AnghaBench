
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int A9WDOG_ID_MASK ;
 int MB4H_A9WDOG_LOAD ;
 int prcmu_a9wdog (int ,int,int,int,int) ;

int db8500_prcmu_load_a9wdog(u8 id, u32 timeout)
{
 return prcmu_a9wdog(MB4H_A9WDOG_LOAD,
       (id & A9WDOG_ID_MASK) |




       (u8)((timeout << 4) & 0xf0),
       (u8)((timeout >> 4) & 0xff),
       (u8)((timeout >> 12) & 0xff),
       (u8)((timeout >> 20) & 0xff));
}
