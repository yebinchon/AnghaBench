
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;
struct saa7110 {scalar_t__ reg; } ;
struct i2c_client {int adapter; } ;


 int I2C_FUNC_I2C ;
 scalar_t__ SAA7110_NR_REG ;
 scalar_t__ i2c_check_functionality (int ,int ) ;
 int i2c_master_send (struct i2c_client*,scalar_t__ const*,unsigned int) ;
 int memcpy (scalar_t__,scalar_t__ const*,unsigned int) ;
 int saa7110_write (struct v4l2_subdev*,int ,int ) ;
 struct saa7110* to_saa7110 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7110_write_block(struct v4l2_subdev *sd, const u8 *data, unsigned int len)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct saa7110 *decoder = to_saa7110(sd);
 int ret = -1;
 u8 reg = *data;


 if (reg + (len - 1) > SAA7110_NR_REG)
  return ret;



 if (i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  ret = i2c_master_send(client, data, len);


  memcpy(decoder->reg + reg, data + 1, len - 1);
 } else {
  for (++data, --len; len; len--) {
   ret = saa7110_write(sd, reg++, *data++);
   if (ret < 0)
    break;
  }
 }

 return ret;
}
