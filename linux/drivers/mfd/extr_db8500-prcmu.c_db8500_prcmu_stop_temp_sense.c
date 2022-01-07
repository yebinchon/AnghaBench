
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_hot_period (int) ;

int db8500_prcmu_stop_temp_sense(void)
{
 return config_hot_period(0xFFFF);
}
