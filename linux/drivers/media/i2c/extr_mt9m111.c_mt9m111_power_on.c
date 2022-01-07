
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int clk; int regulator; int subdev; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 int mt9m111_resume (struct mt9m111*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int v4l2_clk_disable (int ) ;
 int v4l2_clk_enable (int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_power_on(struct mt9m111 *mt9m111)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);
 int ret;

 ret = v4l2_clk_enable(mt9m111->clk);
 if (ret < 0)
  return ret;

 ret = regulator_enable(mt9m111->regulator);
 if (ret < 0)
  goto out_clk_disable;

 ret = mt9m111_resume(mt9m111);
 if (ret < 0)
  goto out_regulator_disable;

 return 0;

out_regulator_disable:
 regulator_disable(mt9m111->regulator);

out_clk_disable:
 v4l2_clk_disable(mt9m111->clk);

 dev_err(&client->dev, "Failed to resume the sensor: %d\n", ret);

 return ret;
}
