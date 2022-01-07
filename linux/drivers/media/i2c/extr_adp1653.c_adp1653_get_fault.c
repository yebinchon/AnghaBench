
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct adp1653_flash {int fault; TYPE_1__* led_mode; int subdev; } ;
struct TYPE_2__ {int val; } ;


 int ADP1653_REG_FAULT ;
 int ADP1653_REG_OUT_SEL ;
 int V4L2_FLASH_LED_MODE_NONE ;
 int adp1653_update_hw (struct adp1653_flash*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int adp1653_get_fault(struct adp1653_flash *flash)
{
 struct i2c_client *client = v4l2_get_subdevdata(&flash->subdev);
 int fault;
 int rval;

 fault = i2c_smbus_read_byte_data(client, ADP1653_REG_FAULT);
 if (fault < 0)
  return fault;

 flash->fault |= fault;

 if (!flash->fault)
  return 0;


 rval = i2c_smbus_write_byte_data(client, ADP1653_REG_OUT_SEL, 0);
 if (rval < 0)
  return rval;

 flash->led_mode->val = V4L2_FLASH_LED_MODE_NONE;

 rval = adp1653_update_hw(flash);
 if (rval)
  return rval;

 return flash->fault;
}
