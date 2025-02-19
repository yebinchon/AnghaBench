
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {struct saa7134_dev* algo_data; } ;
typedef enum i2c_status { ____Placeholder_i2c_status } i2c_status ;


 int CONTINUE ;
 int EIO ;
 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 int START ;
 int STOP ;
 int i2c_cont (int,char*,...) ;
 int i2c_dbg (int,char*) ;
 int i2c_debug ;
 int i2c_get_status (struct saa7134_dev*) ;
 int i2c_is_busy_wait (struct saa7134_dev*) ;
 scalar_t__ i2c_is_error (int) ;
 int i2c_is_idle (int) ;
 int i2c_recv_byte (struct saa7134_dev*) ;
 int i2c_reset (struct saa7134_dev*) ;
 int i2c_send_byte (struct saa7134_dev*,int ,unsigned char) ;
 int i2c_set_attr (struct saa7134_dev*,int ) ;
 int msleep (int) ;
 unsigned char* str_i2c_status ;

__attribute__((used)) static int saa7134_i2c_xfer(struct i2c_adapter *i2c_adap,
       struct i2c_msg *msgs, int num)
{
 struct saa7134_dev *dev = i2c_adap->algo_data;
 enum i2c_status status;
 unsigned char data;
 int addr,rc,i,byte;

 status = i2c_get_status(dev);
 if (!i2c_is_idle(status))
  if (!i2c_reset(dev))
   return -EIO;

 i2c_dbg(2, "start xfer\n");
 i2c_dbg(1, "i2c xfer:");
 for (i = 0; i < num; i++) {
  if (!(msgs[i].flags & I2C_M_NOSTART) || 0 == i) {

   i2c_dbg(2, "send address\n");
   addr = msgs[i].addr << 1;
   if (msgs[i].flags & I2C_M_RD)
    addr |= 1;
   if (i > 0 && msgs[i].flags &
       I2C_M_RD && msgs[i].addr != 0x40 &&
       msgs[i].addr != 0x41 &&
       msgs[i].addr != 0x19) {



    int quirk = 0xfe;
    i2c_cont(1, " [%02x quirk]", quirk);
    i2c_send_byte(dev,START,quirk);
    i2c_recv_byte(dev);
   }
   i2c_cont(1, " < %02x", addr);
   rc = i2c_send_byte(dev,START,addr);
   if (rc < 0)
     goto err;
  }
  if (msgs[i].flags & I2C_M_RD) {

   i2c_dbg(2, "read bytes\n");
   for (byte = 0; byte < msgs[i].len; byte++) {
    i2c_cont(1, " =");
    rc = i2c_recv_byte(dev);
    if (rc < 0)
     goto err;
    i2c_cont(1, "%02x", rc);
    msgs[i].buf[byte] = rc;
   }



   if (0x19 == msgs[i].addr) {
    i2c_cont(1, " ?");
    rc = i2c_recv_byte(dev);
    if (rc < 0)
     goto err;
    i2c_cont(1, "%02x", rc);
   }
  } else {

   i2c_dbg(2, "write bytes\n");
   for (byte = 0; byte < msgs[i].len; byte++) {
    data = msgs[i].buf[byte];
    i2c_cont(1, " %02x", data);
    rc = i2c_send_byte(dev,CONTINUE,data);
    if (rc < 0)
     goto err;
   }
  }
 }
 i2c_dbg(2, "xfer done\n");
 i2c_cont(1, " >");
 i2c_set_attr(dev,STOP);
 rc = -EIO;
 if (!i2c_is_busy_wait(dev))
  goto err;
 status = i2c_get_status(dev);
 if (i2c_is_error(status))
  goto err;

 msleep(1);

 i2c_cont(1, "\n");
 return num;
 err:
 if (1 == i2c_debug) {
  status = i2c_get_status(dev);
  i2c_cont(1, " ERROR: %s\n", str_i2c_status[status]);
 }
 return rc;
}
