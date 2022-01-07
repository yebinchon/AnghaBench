
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_data {int member_3; int member_2; int member_1; int member_0; } ;
struct saa7127_state {scalar_t__ ident; struct v4l2_subdev sd; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int name; int dev; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 scalar_t__ SAA7127 ;
 int SAA7127_INPUT_TYPE_NORMAL ;
 int SAA7127_INPUT_TYPE_TEST_IMAGE ;
 int SAA7127_OUTPUT_TYPE_BOTH ;
 scalar_t__ SAA7129 ;
 int SAA7129_REG_FADE_KEY_COL2 ;
 int V4L2_STD_NTSC ;
 int debug ;
 struct saa7127_state* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int saa7127_init_config_common ;
 int saa7127_ops ;
 int saa7127_read (struct v4l2_subdev*,int) ;
 int saa7127_set_cc (struct v4l2_subdev*,struct v4l2_sliced_vbi_data*) ;
 int saa7127_set_input_type (struct v4l2_subdev*,int ) ;
 int saa7127_set_output_type (struct v4l2_subdev*,int ) ;
 int saa7127_set_std (struct v4l2_subdev*,int ) ;
 int saa7127_set_video_enable (struct v4l2_subdev*,int) ;
 int saa7127_set_vps (struct v4l2_subdev*,struct v4l2_sliced_vbi_data*) ;
 int saa7127_set_wss (struct v4l2_subdev*,struct v4l2_sliced_vbi_data*) ;
 int saa7127_set_xds (struct v4l2_subdev*,struct v4l2_sliced_vbi_data*) ;
 int saa7127_write (struct v4l2_subdev*,int,int) ;
 int saa7127_write_inittab (struct v4l2_subdev*,int ) ;
 int saa7129_init_config_extra ;
 int strscpy (int ,char*,int ) ;
 int test_image ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,int,int ) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int) ;

__attribute__((used)) static int saa7127_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct saa7127_state *state;
 struct v4l2_subdev *sd;
 struct v4l2_sliced_vbi_data vbi = { 0, 0, 0, 0 };


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_dbg(1, debug, client, "detecting saa7127 client on address 0x%x\n",
   client->addr << 1);

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;

 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &saa7127_ops);






 if ((saa7127_read(sd, 0) & 0xe4) != 0 ||
   (saa7127_read(sd, 0x29) & 0x3f) != 0x1d) {
  v4l2_dbg(1, debug, sd, "saa7127 not found\n");
  return -ENODEV;
 }

 if (id->driver_data) {
  state->ident = id->driver_data;
 } else {
  int read_result;


  read_result = saa7127_read(sd, SAA7129_REG_FADE_KEY_COL2);
  saa7127_write(sd, SAA7129_REG_FADE_KEY_COL2, 0xaa);
  if (saa7127_read(sd, SAA7129_REG_FADE_KEY_COL2) == 0xaa) {
   saa7127_write(sd, SAA7129_REG_FADE_KEY_COL2,
     read_result);
   state->ident = SAA7129;
   strscpy(client->name, "saa7129", I2C_NAME_SIZE);
  } else {
   state->ident = SAA7127;
   strscpy(client->name, "saa7127", I2C_NAME_SIZE);
  }
 }

 v4l2_info(sd, "%s found @ 0x%x (%s)\n", client->name,
   client->addr << 1, client->adapter->name);

 v4l2_dbg(1, debug, sd, "Configuring encoder\n");
 saa7127_write_inittab(sd, saa7127_init_config_common);
 saa7127_set_std(sd, V4L2_STD_NTSC);
 saa7127_set_output_type(sd, SAA7127_OUTPUT_TYPE_BOTH);
 saa7127_set_vps(sd, &vbi);
 saa7127_set_wss(sd, &vbi);
 saa7127_set_cc(sd, &vbi);
 saa7127_set_xds(sd, &vbi);
 if (test_image == 1)


  saa7127_set_input_type(sd, SAA7127_INPUT_TYPE_TEST_IMAGE);
 else
  saa7127_set_input_type(sd, SAA7127_INPUT_TYPE_NORMAL);
 saa7127_set_video_enable(sd, 1);

 if (state->ident == SAA7129)
  saa7127_write_inittab(sd, saa7129_init_config_extra);
 return 0;
}
