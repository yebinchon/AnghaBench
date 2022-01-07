
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct smiapp_sensor {int* limits; TYPE_5__* src; void* pixel_rate_csi; int mutex; void* hflip; TYPE_4__* pixel_array; void* pixel_rate_parray; TYPE_2__* hblank; TYPE_1__* vblank; void* vflip; void* exposure; void* analog_gain; } ;
struct i2c_client {int dev; } ;
struct TYPE_16__ {int error; int * lock; } ;
struct TYPE_15__ {TYPE_7__* ctrl_handler; } ;
struct TYPE_14__ {TYPE_7__ ctrl_handler; TYPE_6__ sd; } ;
struct TYPE_12__ {TYPE_7__* ctrl_handler; } ;
struct TYPE_13__ {TYPE_7__ ctrl_handler; TYPE_3__ sd; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int INT_MAX ;
 size_t SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX ;
 size_t SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN ;
 size_t SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_STEP ;
 int V4L2_CID_ANALOGUE_GAIN ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_HBLANK ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_PIXEL_RATE ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VBLANK ;
 int V4L2_CID_VFLIP ;
 int V4L2_CTRL_FLAG_UPDATE ;
 int dev_err (int *,char*,int) ;
 int max (int,unsigned int) ;
 int smiapp_ctrl_ops ;
 int smiapp_test_patterns ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (TYPE_7__*,int) ;
 void* v4l2_ctrl_new_std (TYPE_7__*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu_items (TYPE_7__*,int *,int ,scalar_t__,int ,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (TYPE_6__*) ;

__attribute__((used)) static int smiapp_init_controls(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 int rval;

 rval = v4l2_ctrl_handler_init(&sensor->pixel_array->ctrl_handler, 12);
 if (rval)
  return rval;

 sensor->pixel_array->ctrl_handler.lock = &sensor->mutex;

 sensor->analog_gain = v4l2_ctrl_new_std(
  &sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
  V4L2_CID_ANALOGUE_GAIN,
  sensor->limits[SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN],
  sensor->limits[SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX],
  max(sensor->limits[SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_STEP], 1U),
  sensor->limits[SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN]);


 sensor->exposure = v4l2_ctrl_new_std(
  &sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
  V4L2_CID_EXPOSURE, 0, 0, 1, 0);

 sensor->hflip = v4l2_ctrl_new_std(
  &sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
  V4L2_CID_HFLIP, 0, 1, 1, 0);
 sensor->vflip = v4l2_ctrl_new_std(
  &sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
  V4L2_CID_VFLIP, 0, 1, 1, 0);

 sensor->vblank = v4l2_ctrl_new_std(
  &sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
  V4L2_CID_VBLANK, 0, 1, 1, 0);

 if (sensor->vblank)
  sensor->vblank->flags |= V4L2_CTRL_FLAG_UPDATE;

 sensor->hblank = v4l2_ctrl_new_std(
  &sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
  V4L2_CID_HBLANK, 0, 1, 1, 0);

 if (sensor->hblank)
  sensor->hblank->flags |= V4L2_CTRL_FLAG_UPDATE;

 sensor->pixel_rate_parray = v4l2_ctrl_new_std(
  &sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
  V4L2_CID_PIXEL_RATE, 1, INT_MAX, 1, 1);

 v4l2_ctrl_new_std_menu_items(&sensor->pixel_array->ctrl_handler,
         &smiapp_ctrl_ops, V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(smiapp_test_patterns) - 1,
         0, 0, smiapp_test_patterns);

 if (sensor->pixel_array->ctrl_handler.error) {
  dev_err(&client->dev,
   "pixel array controls initialization failed (%d)\n",
   sensor->pixel_array->ctrl_handler.error);
  return sensor->pixel_array->ctrl_handler.error;
 }

 sensor->pixel_array->sd.ctrl_handler =
  &sensor->pixel_array->ctrl_handler;

 v4l2_ctrl_cluster(2, &sensor->hflip);

 rval = v4l2_ctrl_handler_init(&sensor->src->ctrl_handler, 0);
 if (rval)
  return rval;

 sensor->src->ctrl_handler.lock = &sensor->mutex;

 sensor->pixel_rate_csi = v4l2_ctrl_new_std(
  &sensor->src->ctrl_handler, &smiapp_ctrl_ops,
  V4L2_CID_PIXEL_RATE, 1, INT_MAX, 1, 1);

 if (sensor->src->ctrl_handler.error) {
  dev_err(&client->dev,
   "src controls initialization failed (%d)\n",
   sensor->src->ctrl_handler.error);
  return sensor->src->ctrl_handler.error;
 }

 sensor->src->sd.ctrl_handler = &sensor->src->ctrl_handler;

 return 0;
}
