
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int ctx; int subdev; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 int mt9m111_enable (struct mt9m111*) ;
 int mt9m111_reset (struct mt9m111*) ;
 int mt9m111_set_context (struct mt9m111*,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_init(struct mt9m111 *mt9m111)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);
 int ret;

 ret = mt9m111_enable(mt9m111);
 if (!ret)
  ret = mt9m111_reset(mt9m111);
 if (!ret)
  ret = mt9m111_set_context(mt9m111, mt9m111->ctx);
 if (ret)
  dev_err(&client->dev, "mt9m111 init failed: %d\n", ret);
 return ret;
}
