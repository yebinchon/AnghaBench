
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov772x_priv {int hdl; int regmap; int subdev; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int MIDH ;
 int MIDL ;


 int PID ;
 int VER ;
 int VERSION (int,int) ;
 int dev_err (int *,char*,int,int) ;
 int dev_info (int *,char*,char const*,int,int,int,int) ;
 int ov772x_power_off (struct ov772x_priv*) ;
 int ov772x_power_on (struct ov772x_priv*) ;
 int regmap_read (int ,int ,int*) ;
 int v4l2_ctrl_handler_setup (int *) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov772x_video_probe(struct ov772x_priv *priv)
{
 struct i2c_client *client = v4l2_get_subdevdata(&priv->subdev);
 int pid, ver, midh, midl;
 const char *devname;
 int ret;

 ret = ov772x_power_on(priv);
 if (ret < 0)
  return ret;


 ret = regmap_read(priv->regmap, PID, &pid);
 if (ret < 0)
  return ret;
 ret = regmap_read(priv->regmap, VER, &ver);
 if (ret < 0)
  return ret;

 switch (VERSION(pid, ver)) {
 case 129:
  devname = "ov7720";
  break;
 case 128:
  devname = "ov7725";
  break;
 default:
  dev_err(&client->dev,
   "Product ID error %x:%x\n", pid, ver);
  ret = -ENODEV;
  goto done;
 }

 ret = regmap_read(priv->regmap, MIDH, &midh);
 if (ret < 0)
  return ret;
 ret = regmap_read(priv->regmap, MIDL, &midl);
 if (ret < 0)
  return ret;

 dev_info(&client->dev,
   "%s Product ID %0x:%0x Manufacturer ID %x:%x\n",
   devname, pid, ver, midh, midl);

 ret = v4l2_ctrl_handler_setup(&priv->hdl);

done:
 ov772x_power_off(priv);

 return ret;
}
