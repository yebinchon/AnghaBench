
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si4713_usb_device {int dummy; } ;
struct i2c_msg {int flags; int len; int buf; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int I2C_M_RD ;
 struct si4713_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int si4713_i2c_read (struct si4713_usb_device*,int ,int ) ;
 int si4713_i2c_write (struct si4713_usb_device*,int ,int ) ;

__attribute__((used)) static int si4713_transfer(struct i2c_adapter *i2c_adapter,
    struct i2c_msg *msgs, int num)
{
 struct si4713_usb_device *radio = i2c_get_adapdata(i2c_adapter);
 int retval = -EINVAL;
 int i;

 for (i = 0; i < num; i++) {
  if (msgs[i].flags & I2C_M_RD)
   retval = si4713_i2c_read(radio, msgs[i].buf, msgs[i].len);
  else
   retval = si4713_i2c_write(radio, msgs[i].buf, msgs[i].len);
  if (retval)
   break;
 }

 return retval ? retval : num;
}
