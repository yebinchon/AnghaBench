
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov2640_priv {int subdev; } ;
struct i2c_client {int dev; } ;


 int BANK_SEL ;
 int BANK_SEL_SENS ;
 int ENODEV ;
 int MIDH ;
 int MIDL ;
 int PID ;

 int VER ;
 int VERSION (int ,int ) ;
 int dev_err (int *,char*,int ,int ) ;
 int dev_info (int *,char*,char const*,int ,int ,int ,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int ov2640_s_power (int *,int) ;
 struct ov2640_priv* to_ov2640 (struct i2c_client*) ;

__attribute__((used)) static int ov2640_video_probe(struct i2c_client *client)
{
 struct ov2640_priv *priv = to_ov2640(client);
 u8 pid, ver, midh, midl;
 const char *devname;
 int ret;

 ret = ov2640_s_power(&priv->subdev, 1);
 if (ret < 0)
  return ret;




 i2c_smbus_write_byte_data(client, BANK_SEL, BANK_SEL_SENS);
 pid = i2c_smbus_read_byte_data(client, PID);
 ver = i2c_smbus_read_byte_data(client, VER);
 midh = i2c_smbus_read_byte_data(client, MIDH);
 midl = i2c_smbus_read_byte_data(client, MIDL);

 switch (VERSION(pid, ver)) {
 case 128:
  devname = "ov2640";
  break;
 default:
  dev_err(&client->dev,
   "Product ID error %x:%x\n", pid, ver);
  ret = -ENODEV;
  goto done;
 }

 dev_info(&client->dev,
   "%s Product ID %0x:%0x Manufacturer ID %x:%x\n",
   devname, pid, ver, midh, midl);

done:
 ov2640_s_power(&priv->subdev, 0);
 return ret;
}
