
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int adapter; } ;


 int I2C_LOCK_SEGMENT ;
 int i2c_lock_bus (int ,int ) ;
 int i2c_unlock_bus (int ,int ) ;
 int read_device (struct i2c_client*,int,int ,unsigned char*) ;
 int write_device (struct i2c_client*,int,int,unsigned char*) ;

int pm860x_page_reg_write(struct i2c_client *i2c, int reg,
     unsigned char data)
{
 unsigned char zero;
 int ret;

 i2c_lock_bus(i2c->adapter, I2C_LOCK_SEGMENT);
 read_device(i2c, 0xFA, 0, &zero);
 read_device(i2c, 0xFB, 0, &zero);
 read_device(i2c, 0xFF, 0, &zero);
 ret = write_device(i2c, reg, 1, &data);
 read_device(i2c, 0xFE, 0, &zero);
 read_device(i2c, 0xFC, 0, &zero);
 i2c_unlock_bus(i2c->adapter, I2C_LOCK_SEGMENT);
 return ret;
}
