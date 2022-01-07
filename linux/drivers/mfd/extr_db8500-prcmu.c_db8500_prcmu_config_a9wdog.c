
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int A9WDOG_AUTO_OFF_DIS ;
 int A9WDOG_AUTO_OFF_EN ;
 int BUG_ON (int) ;
 int MB4H_A9WDOG_CONF ;
 int prcmu_a9wdog (int ,int,int ,int ,int ) ;

int db8500_prcmu_config_a9wdog(u8 num, bool sleep_auto_off)
{
 BUG_ON(num == 0 || num > 0xf);
 return prcmu_a9wdog(MB4H_A9WDOG_CONF, num, 0, 0,
       sleep_auto_off ? A9WDOG_AUTO_OFF_EN :
       A9WDOG_AUTO_OFF_DIS);
}
