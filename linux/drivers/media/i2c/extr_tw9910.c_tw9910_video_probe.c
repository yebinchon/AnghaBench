
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw9910_priv {int revision; int subdev; int * scale; int norm; TYPE_1__* info; } ;
struct i2c_client {int dev; } ;
typedef int s32 ;
struct TYPE_2__ {int buswidth; } ;


 int ENODEV ;
 int GET_ID (int) ;
 int GET_REV (int) ;
 int ID ;
 int V4L2_STD_NTSC ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 int * tw9910_ntsc_scales ;
 int tw9910_s_power (int *,int) ;

__attribute__((used)) static int tw9910_video_probe(struct i2c_client *client)
{
 struct tw9910_priv *priv = to_tw9910(client);
 s32 id;
 int ret;


 if (priv->info->buswidth != 16 && priv->info->buswidth != 8) {
  dev_err(&client->dev, "bus width error\n");
  return -ENODEV;
 }

 ret = tw9910_s_power(&priv->subdev, 1);
 if (ret < 0)
  return ret;





 id = i2c_smbus_read_byte_data(client, ID);
 priv->revision = GET_REV(id);
 id = GET_ID(id);

 if (id != 0x0b || priv->revision > 0x01) {
  dev_err(&client->dev, "Product ID error %x:%x\n",
   id, priv->revision);
  ret = -ENODEV;
  goto done;
 }

 dev_info(&client->dev, "tw9910 Product ID %0x:%0x\n",
   id, priv->revision);

 priv->norm = V4L2_STD_NTSC;
 priv->scale = &tw9910_ntsc_scales[0];

done:
 tw9910_s_power(&priv->subdev, 0);

 return ret;
}
