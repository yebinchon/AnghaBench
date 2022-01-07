
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int name; } ;
struct video_i2c_data {TYPE_2__ vdev; TYPE_1__ v4l2_dev; int regmap; } ;
struct v4l2_capability {int bus_info; int card; int driver; } ;
struct i2c_client {int addr; TYPE_3__* adapter; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int nr; } ;


 struct device* regmap_get_device (int ) ;
 int sprintf (int ,char*,int,int) ;
 int strscpy (int ,int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct video_i2c_data* video_drvdata (struct file*) ;

__attribute__((used)) static int video_i2c_querycap(struct file *file, void *priv,
    struct v4l2_capability *vcap)
{
 struct video_i2c_data *data = video_drvdata(file);
 struct device *dev = regmap_get_device(data->regmap);
 struct i2c_client *client = to_i2c_client(dev);

 strscpy(vcap->driver, data->v4l2_dev.name, sizeof(vcap->driver));
 strscpy(vcap->card, data->vdev.name, sizeof(vcap->card));

 sprintf(vcap->bus_info, "I2C:%d-%d", client->adapter->nr, client->addr);

 return 0;
}
