
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t112_priv {int num_formats; int subdev; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,char const*,int) ;
 int mt9t112_cfmts ;
 int mt9t112_reg_read (int,struct i2c_client*,int) ;
 int mt9t112_s_power (int *,int) ;
 struct mt9t112_priv* to_mt9t112 (struct i2c_client*) ;

__attribute__((used)) static int mt9t112_camera_probe(struct i2c_client *client)
{
 struct mt9t112_priv *priv = to_mt9t112(client);
 const char *devname;
 int chipid;
 int ret;

 ret = mt9t112_s_power(&priv->subdev, 1);
 if (ret < 0)
  return ret;


 mt9t112_reg_read(chipid, client, 0x0000);

 switch (chipid) {
 case 0x2680:
  devname = "mt9t111";
  priv->num_formats = 1;
  break;
 case 0x2682:
  devname = "mt9t112";
  priv->num_formats = ARRAY_SIZE(mt9t112_cfmts);
  break;
 default:
  dev_err(&client->dev, "Product ID error %04x\n", chipid);
  ret = -ENODEV;
  goto done;
 }

 dev_info(&client->dev, "%s chip ID %04x\n", devname, chipid);

done:
 mt9t112_s_power(&priv->subdev, 0);

 return ret;
}
