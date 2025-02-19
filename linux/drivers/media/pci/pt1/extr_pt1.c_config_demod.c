
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; int name; } ;
typedef enum pt1_fe_clk { ____Placeholder_pt1_fe_clk } pt1_fe_clk ;


 int ARRAY_SIZE (int**) ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 int PT1_FE_CLK_20MHZ ;
 int TC90522_I2C_DEV_SAT ;
 int i2c_master_send (struct i2c_client*,int const*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;
 int** va1j5jf8007s_20mhz_configs ;
 int** va1j5jf8007s_25mhz_configs ;
 int** va1j5jf8007t_20mhz_configs ;
 int** va1j5jf8007t_25mhz_configs ;

__attribute__((used)) static int config_demod(struct i2c_client *cl, enum pt1_fe_clk clk)
{
 int ret;
 bool is_sat;
 const u8 (*cfg_data)[2];
 int i, len;

 is_sat = !strncmp(cl->name, TC90522_I2C_DEV_SAT,
     strlen(TC90522_I2C_DEV_SAT));
 if (is_sat) {
  struct i2c_msg msg[2];
  u8 wbuf, rbuf;

  wbuf = 0x07;
  msg[0].addr = cl->addr;
  msg[0].flags = 0;
  msg[0].len = 1;
  msg[0].buf = &wbuf;

  msg[1].addr = cl->addr;
  msg[1].flags = I2C_M_RD;
  msg[1].len = 1;
  msg[1].buf = &rbuf;
  ret = i2c_transfer(cl->adapter, msg, 2);
  if (ret < 0)
   return ret;
  if (rbuf != 0x41)
   return -EIO;
 }


 if (clk == PT1_FE_CLK_20MHZ) {
  if (is_sat) {
   cfg_data = va1j5jf8007s_20mhz_configs;
   len = ARRAY_SIZE(va1j5jf8007s_20mhz_configs);
  } else {
   cfg_data = va1j5jf8007t_20mhz_configs;
   len = ARRAY_SIZE(va1j5jf8007t_20mhz_configs);
  }
 } else {
  if (is_sat) {
   cfg_data = va1j5jf8007s_25mhz_configs;
   len = ARRAY_SIZE(va1j5jf8007s_25mhz_configs);
  } else {
   cfg_data = va1j5jf8007t_25mhz_configs;
   len = ARRAY_SIZE(va1j5jf8007t_25mhz_configs);
  }
 }

 for (i = 0; i < len; i++) {
  ret = i2c_master_send(cl, cfg_data[i], 2);
  if (ret < 0)
   return ret;
 }
 return 0;
}
