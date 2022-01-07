
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int error; } ;
struct TYPE_9__ {TYPE_4__* ctrl_handler; } ;
struct et8ek8_sensor {TYPE_4__ ctrl_handler; TYPE_3__ subdev; void* pixel_rate; void* exposure; TYPE_2__* current_reglist; } ;
typedef int s32 ;
struct TYPE_7__ {int max_exp; } ;
struct TYPE_8__ {TYPE_1__ mode; } ;


 int ARRAY_SIZE (int ) ;
 int INT_MAX ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_PIXEL_RATE ;
 int V4L2_CID_TEST_PATTERN ;
 int et8ek8_ctrl_ops ;
 int et8ek8_gain_table ;
 int et8ek8_test_pattern_menu ;
 int v4l2_ctrl_handler_init (TYPE_4__*,int) ;
 void* v4l2_ctrl_new_std (TYPE_4__*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu_items (TYPE_4__*,int *,int ,int,int ,int ,int ) ;

__attribute__((used)) static int et8ek8_init_controls(struct et8ek8_sensor *sensor)
{
 s32 max_rows;

 v4l2_ctrl_handler_init(&sensor->ctrl_handler, 4);


 v4l2_ctrl_new_std(&sensor->ctrl_handler, &et8ek8_ctrl_ops,
     V4L2_CID_GAIN, 0, ARRAY_SIZE(et8ek8_gain_table) - 1,
     1, 0);

 max_rows = sensor->current_reglist->mode.max_exp;
 {
  u32 min = 1, max = max_rows;

  sensor->exposure =
   v4l2_ctrl_new_std(&sensor->ctrl_handler,
       &et8ek8_ctrl_ops, V4L2_CID_EXPOSURE,
       min, max, min, max);
 }


 sensor->pixel_rate =
  v4l2_ctrl_new_std(&sensor->ctrl_handler, &et8ek8_ctrl_ops,
  V4L2_CID_PIXEL_RATE, 1, INT_MAX, 1, 1);


 v4l2_ctrl_new_std_menu_items(&sensor->ctrl_handler,
         &et8ek8_ctrl_ops, V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(et8ek8_test_pattern_menu) - 1,
         0, 0, et8ek8_test_pattern_menu);

 if (sensor->ctrl_handler.error)
  return sensor->ctrl_handler.error;

 sensor->subdev.ctrl_handler = &sensor->ctrl_handler;

 return 0;
}
