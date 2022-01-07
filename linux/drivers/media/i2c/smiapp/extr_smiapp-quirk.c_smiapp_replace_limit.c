
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct smiapp_sensor {size_t* limits; TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int what; int addr; } ;
struct TYPE_3__ {int sd; } ;


 int dev_dbg (int *,char*,int ,int ,size_t,size_t) ;
 TYPE_2__* smiapp_reg_limits ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

void smiapp_replace_limit(struct smiapp_sensor *sensor,
     u32 limit, u32 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);

 dev_dbg(&client->dev, "quirk: 0x%8.8x \"%s\" = %d, 0x%x\n",
  smiapp_reg_limits[limit].addr,
  smiapp_reg_limits[limit].what, val, val);
 sensor->limits[limit] = val;
}
