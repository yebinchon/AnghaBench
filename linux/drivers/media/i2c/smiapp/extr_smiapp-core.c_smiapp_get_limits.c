
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct smiapp_sensor {int * limits; TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int what; int addr; } ;
struct TYPE_3__ {int sd; } ;


 int dev_dbg (int *,char*,int ,int ,int ,int ) ;
 int smiapp_read (struct smiapp_sensor*,int ,int *) ;
 TYPE_2__* smiapp_reg_limits ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int smiapp_get_limits(struct smiapp_sensor *sensor, int const *limit,
        unsigned int n)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 unsigned int i;
 u32 val;
 int rval;

 for (i = 0; i < n; i++) {
  rval = smiapp_read(
   sensor, smiapp_reg_limits[limit[i]].addr, &val);
  if (rval)
   return rval;
  sensor->limits[limit[i]] = val;
  dev_dbg(&client->dev, "0x%8.8x \"%s\" = %u, 0x%x\n",
   smiapp_reg_limits[limit[i]].addr,
   smiapp_reg_limits[limit[i]].what, val, val);
 }

 return 0;
}
