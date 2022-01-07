
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct smiapp_sensor {int * limits; TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int what; int addr; } ;
struct TYPE_3__ {int sd; } ;


 unsigned int ARRAY_SIZE (size_t const*) ;
 int SMIAPP_BINNING_CAPABILITY_NO ;
 size_t SMIAPP_LIMIT_BINNING_CAPABILITY ;
 int dev_dbg (int *,char*,int ,int ,int ,int ) ;
 int smiapp_get_limits (struct smiapp_sensor*,size_t const*,unsigned int) ;
 TYPE_2__* smiapp_reg_limits ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int smiapp_get_limits_binning(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 static u32 const limits[] = {
  132,
  136,
  128,
  134,
  130,
  138,
  140,
 };
 static u32 const limits_replace[] = {
  133,
  137,
  129,
  135,
  131,
  139,
  141,
 };
 unsigned int i;
 int rval;

 if (sensor->limits[SMIAPP_LIMIT_BINNING_CAPABILITY] ==
     SMIAPP_BINNING_CAPABILITY_NO) {
  for (i = 0; i < ARRAY_SIZE(limits); i++)
   sensor->limits[limits[i]] =
    sensor->limits[limits_replace[i]];

  return 0;
 }

 rval = smiapp_get_limits(sensor, limits, ARRAY_SIZE(limits));
 if (rval < 0)
  return rval;





 if (sensor->limits[132]
     && sensor->limits[128]
     && sensor->limits[130])
  return 0;

 for (i = 0; i < ARRAY_SIZE(limits); i++) {
  dev_dbg(&client->dev,
   "replace limit 0x%8.8x \"%s\" = %d, 0x%x\n",
   smiapp_reg_limits[limits[i]].addr,
   smiapp_reg_limits[limits[i]].what,
   sensor->limits[limits_replace[i]],
   sensor->limits[limits_replace[i]]);
  sensor->limits[limits[i]] =
   sensor->limits[limits_replace[i]];
 }

 return 0;
}
