
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct adp1653_flash {TYPE_4__* torch_intensity; TYPE_3__* flash_timeout; TYPE_2__* led_mode; TYPE_1__* indicator_intensity; int subdev; } ;
struct TYPE_8__ {int val; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_5__ {int val; } ;


 int ADP1653_FLASH_INTENSITY_mA_TO_REG (int ) ;
 int ADP1653_INDICATOR_INTENSITY_uA_TO_REG (int ) ;
 int ADP1653_REG_CONFIG ;
 int ADP1653_REG_CONFIG_TMR_CFG ;
 int ADP1653_REG_CONFIG_TMR_SET_SHIFT ;
 int ADP1653_REG_OUT_SEL ;
 int ADP1653_REG_OUT_SEL_HPLED_SHIFT ;
 int ADP1653_REG_OUT_SEL_ILED_SHIFT ;
 int TIMEOUT_US_TO_CODE (int ) ;



 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int adp1653_update_hw(struct adp1653_flash *flash)
{
 struct i2c_client *client = v4l2_get_subdevdata(&flash->subdev);
 u8 out_sel;
 u8 config = 0;
 int rval;

 out_sel = ADP1653_INDICATOR_INTENSITY_uA_TO_REG(
  flash->indicator_intensity->val)
  << ADP1653_REG_OUT_SEL_ILED_SHIFT;

 switch (flash->led_mode->val) {
 case 129:
  break;
 case 130:

  config = ADP1653_REG_CONFIG_TMR_CFG;
  config |= TIMEOUT_US_TO_CODE(flash->flash_timeout->val)
     << ADP1653_REG_CONFIG_TMR_SET_SHIFT;
  break;
 case 128:

  out_sel |= ADP1653_FLASH_INTENSITY_mA_TO_REG(
   flash->torch_intensity->val)
   << ADP1653_REG_OUT_SEL_HPLED_SHIFT;
  break;
 }

 rval = i2c_smbus_write_byte_data(client, ADP1653_REG_OUT_SEL, out_sel);
 if (rval < 0)
  return rval;

 rval = i2c_smbus_write_byte_data(client, ADP1653_REG_CONFIG, config);
 if (rval < 0)
  return rval;

 return 0;
}
