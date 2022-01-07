
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid02_dev {struct i2c_client* i2c_client; } ;
struct i2c_client {int dev; } ;


 int MIPID02_CLK_LANE_REG1 ;
 int MIPID02_DATA_LANE0_REG1 ;
 int MIPID02_DATA_LANE1_REG1 ;
 int dev_err (int *,char*,int) ;
 int mipid02_write_reg (struct mipid02_dev*,int ,int ) ;

__attribute__((used)) static int mipid02_stream_disable(struct mipid02_dev *bridge)
{
 struct i2c_client *client = bridge->i2c_client;
 int ret;


 ret = mipid02_write_reg(bridge, MIPID02_CLK_LANE_REG1, 0);
 if (ret)
  goto error;
 ret = mipid02_write_reg(bridge, MIPID02_DATA_LANE0_REG1, 0);
 if (ret)
  goto error;
 ret = mipid02_write_reg(bridge, MIPID02_DATA_LANE1_REG1, 0);
 if (ret)
  goto error;
error:
 if (ret)
  dev_err(&client->dev, "failed to stream off %d", ret);

 return ret;
}
