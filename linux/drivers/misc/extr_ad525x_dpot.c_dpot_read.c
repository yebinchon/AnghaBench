
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dpot_data {int feat; } ;
typedef int s32 ;


 int F_SPI ;
 int dpot_read_i2c (struct dpot_data*,int ) ;
 int dpot_read_spi (struct dpot_data*,int ) ;

__attribute__((used)) static s32 dpot_read(struct dpot_data *dpot, u8 reg)
{
 if (dpot->feat & F_SPI)
  return dpot_read_spi(dpot, reg);
 else
  return dpot_read_i2c(dpot, reg);
}
