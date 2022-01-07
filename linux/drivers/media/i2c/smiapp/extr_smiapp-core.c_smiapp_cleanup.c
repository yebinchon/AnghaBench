
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smiapp_sensor {TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int sd; } ;


 int dev_attr_ident ;
 int dev_attr_nvm ;
 int device_remove_file (int *,int *) ;
 int smiapp_free_controls (struct smiapp_sensor*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static void smiapp_cleanup(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);

 device_remove_file(&client->dev, &dev_attr_nvm);
 device_remove_file(&client->dev, &dev_attr_ident);

 smiapp_free_controls(sensor);
}
