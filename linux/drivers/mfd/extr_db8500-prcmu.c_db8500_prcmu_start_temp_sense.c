
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int config_hot_period (int) ;

int db8500_prcmu_start_temp_sense(u16 cycles32k)
{
 if (cycles32k == 0xFFFF)
  return -EINVAL;

 return config_hot_period(cycles32k);
}
