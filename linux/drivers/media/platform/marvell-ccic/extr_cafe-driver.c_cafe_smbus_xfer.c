
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
struct cafe_camera {int dummy; } ;


 int EINVAL ;
 int I2C_SMBUS_BYTE_DATA ;
 char I2C_SMBUS_READ ;
 char I2C_SMBUS_WRITE ;
 int cafe_smbus_read_data (struct cafe_camera*,int ,int ,int *) ;
 int cafe_smbus_write_data (struct cafe_camera*,int ,int ,int ) ;
 int cam_err (struct cafe_camera*,char*,int) ;
 struct cafe_camera* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int cafe_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
  unsigned short flags, char rw, u8 command,
  int size, union i2c_smbus_data *data)
{
 struct cafe_camera *cam = i2c_get_adapdata(adapter);
 int ret = -EINVAL;





 if (size != I2C_SMBUS_BYTE_DATA) {
  cam_err(cam, "funky xfer size %d\n", size);
  return -EINVAL;
 }

 if (rw == I2C_SMBUS_WRITE)
  ret = cafe_smbus_write_data(cam, addr, command, data->byte);
 else if (rw == I2C_SMBUS_READ)
  ret = cafe_smbus_read_data(cam, addr, command, &data->byte);
 return ret;
}
