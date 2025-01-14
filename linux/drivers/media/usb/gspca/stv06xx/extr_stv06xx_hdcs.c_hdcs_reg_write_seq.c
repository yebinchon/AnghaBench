
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int EINVAL ;
 int I2C_MAX_BYTES ;
 int stv06xx_write_sensor_bytes (struct sd*,int*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hdcs_reg_write_seq(struct sd *sd, u8 reg, u8 *vals, u8 len)
{
 u8 regs[I2C_MAX_BYTES * 2];
 int i;

 if (unlikely((len <= 0) || (len >= I2C_MAX_BYTES) ||
       (reg + len > 0xff)))
  return -EINVAL;

 for (i = 0; i < len; i++) {
  regs[2 * i] = reg;
  regs[2 * i + 1] = vals[i];


  reg += 2;
 }

 return stv06xx_write_sensor_bytes(sd, regs, len);
}
