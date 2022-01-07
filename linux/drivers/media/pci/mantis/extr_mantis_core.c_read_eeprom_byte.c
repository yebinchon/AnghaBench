
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mantis_pci {int adapter; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;


 int I2C_M_RD ;
 int MANTIS_ERROR ;
 int dprintk (int ,int ,int,char*,int,int,int) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int verbose ;

__attribute__((used)) static int read_eeprom_byte(struct mantis_pci *mantis, u8 *data, u8 length)
{
 int err;
 struct i2c_msg msg[] = {
  {
   .addr = 0x50,
   .flags = 0,
   .buf = data,
   .len = 1
  }, {
   .addr = 0x50,
   .flags = I2C_M_RD,
   .buf = data,
   .len = length
  },
 };

 err = i2c_transfer(&mantis->adapter, msg, 2);
 if (err < 0) {
  dprintk(verbose, MANTIS_ERROR, 1,
   "ERROR: i2c read: < err=%i d0=0x%02x d1=0x%02x >",
   err, data[0], data[1]);

  return err;
 }

 return 0;
}
