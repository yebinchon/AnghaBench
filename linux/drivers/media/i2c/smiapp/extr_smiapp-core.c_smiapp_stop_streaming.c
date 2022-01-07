
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smiapp_sensor {int mutex; TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int sd; } ;


 int SMIAPP_MODE_SELECT_SOFTWARE_STANDBY ;
 int SMIAPP_REG_U8_MODE_SELECT ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int post_streamoff ;
 int smiapp_call_quirk (struct smiapp_sensor*,int ) ;
 int smiapp_write (struct smiapp_sensor*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int smiapp_stop_streaming(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 int rval;

 mutex_lock(&sensor->mutex);
 rval = smiapp_write(sensor, SMIAPP_REG_U8_MODE_SELECT,
       SMIAPP_MODE_SELECT_SOFTWARE_STANDBY);
 if (rval)
  goto out;

 rval = smiapp_call_quirk(sensor, post_streamoff);
 if (rval)
  dev_err(&client->dev, "post_streamoff quirks failed\n");

out:
 mutex_unlock(&sensor->mutex);
 return rval;
}
