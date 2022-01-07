
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct smiapp_sensor {int* limits; int scaling_mode; int scale_m; int mutex; TYPE_9__* hwcfg; TYPE_7__* src; TYPE_5__* scaler; TYPE_3__* pixel_array; TYPE_1__* csi_format; } ;
struct i2c_client {int dev; } ;
struct TYPE_18__ {TYPE_8__* strobe_setup; } ;
struct TYPE_17__ {scalar_t__ trigger; } ;
struct TYPE_16__ {TYPE_6__* crop; int sd; } ;
struct TYPE_15__ {int width; int height; } ;
struct TYPE_14__ {TYPE_4__* crop; } ;
struct TYPE_13__ {int left; int top; int width; int height; } ;
struct TYPE_12__ {TYPE_2__* crop; } ;
struct TYPE_11__ {int left; int top; int width; int height; } ;
struct TYPE_10__ {int width; int compressed; } ;


 int SMIAPP_DIGITAL_CROP_CAPABILITY_INPUT_CROP ;
 int SMIAPP_FLASH_MODE_CAPABILITY_MULTIPLE_STROBE ;
 int SMIAPP_FLASH_MODE_CAPABILITY_SINGLE_STROBE ;
 size_t SMIAPP_LIMIT_DIGITAL_CROP_CAPABILITY ;
 size_t SMIAPP_LIMIT_FLASH_MODE_CAPABILITY ;
 size_t SMIAPP_LIMIT_SCALING_CAPABILITY ;
 int SMIAPP_MODE_SELECT_STREAMING ;
 size_t SMIAPP_PAD_SINK ;
 size_t SMIAPP_PAD_SRC ;
 size_t SMIAPP_PA_PAD_SRC ;
 int SMIAPP_REG_U16_CSI_DATA_FORMAT ;
 int SMIAPP_REG_U16_DIGITAL_CROP_IMAGE_HEIGHT ;
 int SMIAPP_REG_U16_DIGITAL_CROP_IMAGE_WIDTH ;
 int SMIAPP_REG_U16_DIGITAL_CROP_X_OFFSET ;
 int SMIAPP_REG_U16_DIGITAL_CROP_Y_OFFSET ;
 int SMIAPP_REG_U16_SCALE_M ;
 int SMIAPP_REG_U16_SCALING_MODE ;
 int SMIAPP_REG_U16_X_ADDR_END ;
 int SMIAPP_REG_U16_X_ADDR_START ;
 int SMIAPP_REG_U16_X_OUTPUT_SIZE ;
 int SMIAPP_REG_U16_Y_ADDR_END ;
 int SMIAPP_REG_U16_Y_ADDR_START ;
 int SMIAPP_REG_U16_Y_OUTPUT_SIZE ;
 int SMIAPP_REG_U8_MODE_SELECT ;
 int SMIAPP_SCALING_CAPABILITY_NONE ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pre_streamon ;
 int smiapp_call_quirk (struct smiapp_sensor*,int ) ;
 int smiapp_pll_configure (struct smiapp_sensor*) ;
 int smiapp_setup_flash_strobe (struct smiapp_sensor*) ;
 int smiapp_write (struct smiapp_sensor*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int smiapp_start_streaming(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 int rval;

 mutex_lock(&sensor->mutex);

 rval = smiapp_write(sensor, SMIAPP_REG_U16_CSI_DATA_FORMAT,
       (sensor->csi_format->width << 8) |
       sensor->csi_format->compressed);
 if (rval)
  goto out;

 rval = smiapp_pll_configure(sensor);
 if (rval)
  goto out;


 rval = smiapp_write(sensor, SMIAPP_REG_U16_X_ADDR_START,
       sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].left);
 if (rval < 0)
  goto out;

 rval = smiapp_write(sensor, SMIAPP_REG_U16_Y_ADDR_START,
       sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].top);
 if (rval < 0)
  goto out;


 rval = smiapp_write(
  sensor, SMIAPP_REG_U16_X_ADDR_END,
  sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].left
  + sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].width - 1);
 if (rval < 0)
  goto out;

 rval = smiapp_write(
  sensor, SMIAPP_REG_U16_Y_ADDR_END,
  sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].top
  + sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].height - 1);
 if (rval < 0)
  goto out;







 if (sensor->limits[SMIAPP_LIMIT_DIGITAL_CROP_CAPABILITY]
     == SMIAPP_DIGITAL_CROP_CAPABILITY_INPUT_CROP) {
  rval = smiapp_write(
   sensor, SMIAPP_REG_U16_DIGITAL_CROP_X_OFFSET,
   sensor->scaler->crop[SMIAPP_PAD_SINK].left);
  if (rval < 0)
   goto out;

  rval = smiapp_write(
   sensor, SMIAPP_REG_U16_DIGITAL_CROP_Y_OFFSET,
   sensor->scaler->crop[SMIAPP_PAD_SINK].top);
  if (rval < 0)
   goto out;

  rval = smiapp_write(
   sensor, SMIAPP_REG_U16_DIGITAL_CROP_IMAGE_WIDTH,
   sensor->scaler->crop[SMIAPP_PAD_SINK].width);
  if (rval < 0)
   goto out;

  rval = smiapp_write(
   sensor, SMIAPP_REG_U16_DIGITAL_CROP_IMAGE_HEIGHT,
   sensor->scaler->crop[SMIAPP_PAD_SINK].height);
  if (rval < 0)
   goto out;
 }


 if (sensor->limits[SMIAPP_LIMIT_SCALING_CAPABILITY]
     != SMIAPP_SCALING_CAPABILITY_NONE) {
  rval = smiapp_write(sensor, SMIAPP_REG_U16_SCALING_MODE,
        sensor->scaling_mode);
  if (rval < 0)
   goto out;

  rval = smiapp_write(sensor, SMIAPP_REG_U16_SCALE_M,
        sensor->scale_m);
  if (rval < 0)
   goto out;
 }


 rval = smiapp_write(sensor, SMIAPP_REG_U16_X_OUTPUT_SIZE,
       sensor->src->crop[SMIAPP_PAD_SRC].width);
 if (rval < 0)
  goto out;
 rval = smiapp_write(sensor, SMIAPP_REG_U16_Y_OUTPUT_SIZE,
       sensor->src->crop[SMIAPP_PAD_SRC].height);
 if (rval < 0)
  goto out;

 if ((sensor->limits[SMIAPP_LIMIT_FLASH_MODE_CAPABILITY] &
      (SMIAPP_FLASH_MODE_CAPABILITY_SINGLE_STROBE |
       SMIAPP_FLASH_MODE_CAPABILITY_MULTIPLE_STROBE)) &&
     sensor->hwcfg->strobe_setup != ((void*)0) &&
     sensor->hwcfg->strobe_setup->trigger != 0) {
  rval = smiapp_setup_flash_strobe(sensor);
  if (rval)
   goto out;
 }

 rval = smiapp_call_quirk(sensor, pre_streamon);
 if (rval) {
  dev_err(&client->dev, "pre_streamon quirks failed\n");
  goto out;
 }

 rval = smiapp_write(sensor, SMIAPP_REG_U8_MODE_SELECT,
       SMIAPP_MODE_SELECT_STREAMING);

out:
 mutex_unlock(&sensor->mutex);

 return rval;
}
