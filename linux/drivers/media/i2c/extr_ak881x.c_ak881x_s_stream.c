
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;
struct ak881x {TYPE_1__* pdata; } ;
struct TYPE_2__ {int flags; } ;


 int AK881X_COMPONENT ;
 int AK881X_DAC_MODE ;
 int AK881X_STATUS ;
 int dev_dbg (int *,char*,int ) ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_write (struct i2c_client*,int ,int) ;
 struct ak881x* to_ak881x (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ak881x_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ak881x *ak881x = to_ak881x(client);

 if (enable) {
  u8 dac;


  if (ak881x->pdata->flags & AK881X_COMPONENT)
   dac = 3;
  else
   dac = 4;

  reg_write(client, AK881X_DAC_MODE, dac);
  dev_dbg(&client->dev, "chip status 0x%x\n",
   reg_read(client, AK881X_STATUS));
 } else {

  reg_write(client, AK881X_DAC_MODE, 0);
  dev_dbg(&client->dev, "chip status 0x%x\n",
   reg_read(client, AK881X_STATUS));
 }

 return 0;
}
