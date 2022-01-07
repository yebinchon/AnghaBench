
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct ths7303_state {struct ths7303_platform_data* pdata; } ;
struct ths7303_platform_data {int ch_1; int ch_2; int ch_3; } ;
struct i2c_client {int dummy; } ;
typedef enum ths7303_filter_mode { ____Placeholder_ths7303_filter_mode } ths7303_filter_mode ;


 int EINVAL ;
 int THS7303_CHANNEL_1 ;
 int THS7303_CHANNEL_2 ;
 int THS7303_CHANNEL_3 ;




 int pr_info (char*) ;
 int ths7303_write (struct v4l2_subdev*,int ,int) ;
 struct ths7303_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ths7303_setval(struct v4l2_subdev *sd,
     enum ths7303_filter_mode mode)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ths7303_state *state = to_state(sd);
 const struct ths7303_platform_data *pdata = state->pdata;
 u8 val, sel = 0;
 int err, disable = 0;

 if (!client)
  return -EINVAL;

 switch (mode) {
 case 131:
  sel = 0x3;
  break;
 case 128:
  sel = 0x2;
  break;
 case 129:
  sel = 0x1;
  break;
 case 130:
  sel = 0x0;
  break;
 default:

  disable = 1;
 }

 val = (sel << 6) | (sel << 3);
 if (!disable)
  val |= (pdata->ch_1 & 0x27);
 err = ths7303_write(sd, THS7303_CHANNEL_1, val);
 if (err)
  goto out;

 val = (sel << 6) | (sel << 3);
 if (!disable)
  val |= (pdata->ch_2 & 0x27);
 err = ths7303_write(sd, THS7303_CHANNEL_2, val);
 if (err)
  goto out;

 val = (sel << 6) | (sel << 3);
 if (!disable)
  val |= (pdata->ch_3 & 0x27);
 err = ths7303_write(sd, THS7303_CHANNEL_3, val);
 if (err)
  goto out;

 return 0;
out:
 pr_info("write byte data failed\n");
 return err;
}
