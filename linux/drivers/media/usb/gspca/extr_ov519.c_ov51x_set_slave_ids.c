
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sd {int bridge; scalar_t__ sensor_addr; } ;




 int OVFX2_I2C_ADDR ;
 int R51x_I2C_R_SID ;
 int R51x_I2C_W_SID ;
 int reg_w (struct sd*,int ,scalar_t__) ;

__attribute__((used)) static void ov51x_set_slave_ids(struct sd *sd,
    u8 slave)
{
 switch (sd->bridge) {
 case 129:
  reg_w(sd, OVFX2_I2C_ADDR, slave);
  return;
 case 128:
  sd->sensor_addr = slave;
  return;
 }

 reg_w(sd, R51x_I2C_W_SID, slave);
 reg_w(sd, R51x_I2C_R_SID, slave + 1);
}
