
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2680_dev {int lock; struct i2c_client* i2c_client; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 struct ov2680_dev* devm_kzalloc (struct device*,int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int ov2680_check_id (struct ov2680_dev*) ;
 int ov2680_get_regulators (struct ov2680_dev*) ;
 int ov2680_mode_init (struct ov2680_dev*) ;
 int ov2680_parse_dt (struct ov2680_dev*) ;
 int ov2680_v4l2_register (struct ov2680_dev*) ;

__attribute__((used)) static int ov2680_probe(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 struct ov2680_dev *sensor;
 int ret;

 sensor = devm_kzalloc(dev, sizeof(*sensor), GFP_KERNEL);
 if (!sensor)
  return -ENOMEM;

 sensor->i2c_client = client;

 ret = ov2680_parse_dt(sensor);
 if (ret < 0)
  return -EINVAL;

 ret = ov2680_mode_init(sensor);
 if (ret < 0)
  return ret;

 ret = ov2680_get_regulators(sensor);
 if (ret < 0) {
  dev_err(dev, "failed to get regulators\n");
  return ret;
 }

 mutex_init(&sensor->lock);

 ret = ov2680_check_id(sensor);
 if (ret < 0)
  goto lock_destroy;

 ret = ov2680_v4l2_register(sensor);
 if (ret < 0)
  goto lock_destroy;

 dev_info(dev, "ov2680 init correctly\n");

 return 0;

lock_destroy:
 dev_err(dev, "ov2680 init fail: %d\n", ret);
 mutex_destroy(&sensor->lock);

 return ret;
}
