
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int u8 ;
struct TYPE_8__ {int pixel_rate_pixel_array; } ;
struct smiapp_sensor {int binning_horizontal; int binning_vertical; TYPE_6__* vblank; TYPE_5__* pixel_array; TYPE_3__* hblank; TYPE_2__ pll; TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_12__ {int val; } ;
struct TYPE_11__ {TYPE_4__* crop; } ;
struct TYPE_10__ {int width; int height; } ;
struct TYPE_9__ {int val; } ;
struct TYPE_7__ {int sd; } ;


 size_t SMIAPP_PA_PAD_SRC ;
 int SMIAPP_REG_U8_BINNING_MODE ;
 int SMIAPP_REG_U8_BINNING_TYPE ;
 int dev_dbg (int *,char*,int) ;
 int smiapp_get_limits_binning (struct smiapp_sensor*) ;
 int smiapp_pll_update (struct smiapp_sensor*) ;
 int smiapp_update_blanking (struct smiapp_sensor*) ;
 int smiapp_write (struct smiapp_sensor*,int ,unsigned int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int smiapp_update_mode(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 unsigned int binning_mode;
 int rval;


 if (sensor->binning_horizontal == 1 &&
     sensor->binning_vertical == 1) {
  binning_mode = 0;
 } else {
  u8 binning_type =
   (sensor->binning_horizontal << 4)
   | sensor->binning_vertical;

  rval = smiapp_write(
   sensor, SMIAPP_REG_U8_BINNING_TYPE, binning_type);
  if (rval < 0)
   return rval;

  binning_mode = 1;
 }
 rval = smiapp_write(sensor, SMIAPP_REG_U8_BINNING_MODE, binning_mode);
 if (rval < 0)
  return rval;


 rval = smiapp_get_limits_binning(sensor);
 if (rval < 0)
  return rval;

 rval = smiapp_pll_update(sensor);
 if (rval < 0)
  return rval;


 smiapp_update_blanking(sensor);

 dev_dbg(&client->dev, "vblank\t\t%d\n", sensor->vblank->val);
 dev_dbg(&client->dev, "hblank\t\t%d\n", sensor->hblank->val);

 dev_dbg(&client->dev, "real timeperframe\t100/%d\n",
  sensor->pll.pixel_rate_pixel_array /
  ((sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].width
    + sensor->hblank->val) *
   (sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].height
    + sensor->vblank->val) / 100));

 return 0;
}
