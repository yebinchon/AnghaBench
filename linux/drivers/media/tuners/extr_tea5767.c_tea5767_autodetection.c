
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tuner_i2c_props {int addr; struct i2c_adapter* adap; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int pr_warn (char*,...) ;
 int tuner_i2c_xfer_recv (struct tuner_i2c_props*,unsigned char*,int) ;

int tea5767_autodetection(struct i2c_adapter* i2c_adap, u8 i2c_addr)
{
 struct tuner_i2c_props i2c = { .adap = i2c_adap, .addr = i2c_addr };
 unsigned char buffer[7] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };

 int rc;

 if ((rc = tuner_i2c_xfer_recv(&i2c, buffer, 7))< 5) {
  pr_warn("It is not a TEA5767. Received %i bytes.\n", rc);
  return -EINVAL;
 }


 if (buffer[0] == buffer[1] && buffer[0] == buffer[2] &&
     buffer[0] == buffer[3] && buffer[0] == buffer[4]) {
  pr_warn("All bytes are equal. It is not a TEA5767\n");
  return -EINVAL;
 }






 if (((buffer[3] & 0x0f) != 0x00) || (buffer[4] != 0x00)) {
  pr_warn("Chip ID is not zero. It is not a TEA5767\n");
  return -EINVAL;
 }


 return 0;
}
