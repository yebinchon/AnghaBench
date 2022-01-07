
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dpot_data {int feat; } ;
typedef int s32 ;


 int F_SPI ;
 int dpot_write_i2c (struct dpot_data*,int ,int ) ;
 int dpot_write_spi (struct dpot_data*,int ,int ) ;

__attribute__((used)) static s32 dpot_write(struct dpot_data *dpot, u8 reg, u16 value)
{
 if (dpot->feat & F_SPI)
  return dpot_write_spi(dpot, reg, value);
 else
  return dpot_write_i2c(dpot, reg, value);
}
