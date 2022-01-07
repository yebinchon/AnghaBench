
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw9910_priv {int revision; } ;
struct i2c_client {int dummy; } ;


 int HSBEGIN ;
 int HSEND ;
 int HSLOWCTL ;
 int HSYNC_END ;
 int HSYNC_START ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 int tw9910_mask_set (struct i2c_client*,int ,int,int) ;

__attribute__((used)) static int tw9910_set_hsync(struct i2c_client *client)
{
 struct tw9910_priv *priv = to_tw9910(client);
 int ret;


 ret = i2c_smbus_write_byte_data(client, HSBEGIN,
     (HSYNC_START & 0x07F8) >> 3);
 if (ret < 0)
  return ret;


 ret = i2c_smbus_write_byte_data(client, HSEND,
     (HSYNC_END & 0x07F8) >> 3);
 if (ret < 0)
  return ret;



 if (priv->revision == 1)
  ret = tw9910_mask_set(client, HSLOWCTL, 0x77,
          (HSYNC_START & 0x0007) << 4 |
          (HSYNC_END & 0x0007));

 return ret;
}
