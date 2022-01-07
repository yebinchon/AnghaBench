
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
il3945_hw_reg_adjust_power_by_temp(int new_reading, int old_reading)
{
 return (new_reading - old_reading) * (-11) / 100;
}
