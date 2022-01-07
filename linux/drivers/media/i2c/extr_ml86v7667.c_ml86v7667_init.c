
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ml86v7667_priv {int std; int sd; } ;
struct i2c_client {int dummy; } ;


 int ADC2_CLAMP_VOLTAGE (int) ;
 int ADC2_CLAMP_VOLTAGE_MASK ;
 int ADC2_REG ;
 int CLC_CONTRAST_ONOFF ;
 int CLC_REG ;
 int MRA_INPUT_MODE_MASK ;
 int MRA_ITUR_BT656 ;
 int MRA_NTSC_BT601 ;
 int MRA_OUTPUT_MODE_MASK ;
 int MRA_PAL_BT601 ;
 int MRA_REG ;
 int MRA_REGISTER_MODE ;
 int MRC_AUTOSELECT ;
 int MRC_REG ;
 int PLLR1_FIXED_CLOCK ;
 int PLLR1_REG ;
 int SSEPL_LUMINANCE_ONOFF ;
 int SSEPL_REG ;
 int STATUS_NTSCPAL ;
 int STATUS_REG ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int ml86v7667_mask_set (struct i2c_client*,int ,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ml86v7667_init(struct ml86v7667_priv *priv)
{
 struct i2c_client *client = v4l2_get_subdevdata(&priv->sd);
 int val;
 int ret;


 ret = ml86v7667_mask_set(client, MRA_REG,
     MRA_OUTPUT_MODE_MASK | MRA_REGISTER_MODE,
     MRA_ITUR_BT656 | MRA_REGISTER_MODE);


 ret |= ml86v7667_mask_set(client, PLLR1_REG, PLLR1_FIXED_CLOCK,
      PLLR1_FIXED_CLOCK);


 ret |= ml86v7667_mask_set(client, ADC2_REG, ADC2_CLAMP_VOLTAGE_MASK,
      ADC2_CLAMP_VOLTAGE(7));


 ret |= ml86v7667_mask_set(client, SSEPL_REG, SSEPL_LUMINANCE_ONOFF,
      SSEPL_LUMINANCE_ONOFF);


 ret |= ml86v7667_mask_set(client, CLC_REG, CLC_CONTRAST_ONOFF, 0);






 val = i2c_smbus_read_byte_data(client, STATUS_REG);
 if (val < 0)
  return val;

 priv->std = val & STATUS_NTSCPAL ? V4L2_STD_625_50 : V4L2_STD_525_60;
 ret |= ml86v7667_mask_set(client, MRC_REG, MRC_AUTOSELECT, 0);

 val = priv->std & V4L2_STD_525_60 ? MRA_NTSC_BT601 : MRA_PAL_BT601;
 ret |= ml86v7667_mask_set(client, MRA_REG, MRA_INPUT_MODE_MASK, val);

 return ret;
}
