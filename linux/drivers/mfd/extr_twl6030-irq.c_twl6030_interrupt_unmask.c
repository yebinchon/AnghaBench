
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ REG_INT_STS_A ;
 int TWL_MODULE_PIH ;
 int twl_i2c_read_u8 (int ,scalar_t__*,scalar_t__) ;
 int twl_i2c_write_u8 (int ,scalar_t__,scalar_t__) ;

int twl6030_interrupt_unmask(u8 bit_mask, u8 offset)
{
 int ret;
 u8 unmask_value;

 ret = twl_i2c_read_u8(TWL_MODULE_PIH, &unmask_value,
   REG_INT_STS_A + offset);
 unmask_value &= (~(bit_mask));
 ret |= twl_i2c_write_u8(TWL_MODULE_PIH, unmask_value,
   REG_INT_STS_A + offset);
 return ret;
}
