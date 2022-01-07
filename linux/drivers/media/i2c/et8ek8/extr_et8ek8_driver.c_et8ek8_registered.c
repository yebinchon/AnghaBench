
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;
struct et8ek8_sensor {int dummy; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int __et8ek8_get_pad_format (struct et8ek8_sensor*,int *,int ,int ) ;
 int dev_attr_priv_mem ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int et8ek8_dev_init (struct v4l2_subdev*) ;
 int et8ek8_init_controls (struct et8ek8_sensor*) ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int
et8ek8_registered(struct v4l2_subdev *subdev)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);
 struct i2c_client *client = v4l2_get_subdevdata(subdev);
 int rval;

 dev_dbg(&client->dev, "registered!");

 rval = device_create_file(&client->dev, &dev_attr_priv_mem);
 if (rval) {
  dev_err(&client->dev, "could not register sysfs entry\n");
  return rval;
 }

 rval = et8ek8_dev_init(subdev);
 if (rval)
  goto err_file;

 rval = et8ek8_init_controls(sensor);
 if (rval) {
  dev_err(&client->dev, "controls initialization failed\n");
  goto err_file;
 }

 __et8ek8_get_pad_format(sensor, ((void*)0), 0, V4L2_SUBDEV_FORMAT_ACTIVE);

 return 0;

err_file:
 device_remove_file(&client->dev, &dev_attr_priv_mem);

 return rval;
}
