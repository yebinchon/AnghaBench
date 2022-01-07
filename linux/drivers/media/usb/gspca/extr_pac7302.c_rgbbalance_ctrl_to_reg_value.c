
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int const s32 ;


 unsigned int const PAC7302_RGB_BALANCE_MAX ;
 unsigned int const PAC7302_RGB_BALANCE_MIN ;

__attribute__((used)) static u8 rgbbalance_ctrl_to_reg_value(s32 rgb_ctrl_val)
{
 const unsigned int k = 1000;
 unsigned int norm;


 norm = k * (rgb_ctrl_val - PAC7302_RGB_BALANCE_MIN)
      / (PAC7302_RGB_BALANCE_MAX - PAC7302_RGB_BALANCE_MIN);

 return 64 * norm * norm / (k*k) + 32 * norm / k + 32;






}
