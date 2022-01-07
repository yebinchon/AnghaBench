
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int height; int width; int field; int code; } ;


 int S5K6A3_SENSOR_MAX_HEIGHT ;
 int S5K6A3_SENSOR_MAX_WIDTH ;
 int S5K6A3_SENSOR_MIN_HEIGHT ;
 int S5K6A3_SENSOR_MIN_WIDTH ;
 int V4L2_FIELD_NONE ;
 struct v4l2_mbus_framefmt* find_sensor_format (struct v4l2_mbus_framefmt*) ;
 int v4l_bound_align_image (int *,int ,int ,int ,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void s5k6a3_try_format(struct v4l2_mbus_framefmt *mf)
{
 const struct v4l2_mbus_framefmt *fmt;

 fmt = find_sensor_format(mf);
 mf->code = fmt->code;
 mf->field = V4L2_FIELD_NONE;
 v4l_bound_align_image(&mf->width, S5K6A3_SENSOR_MIN_WIDTH,
         S5K6A3_SENSOR_MAX_WIDTH, 0,
         &mf->height, S5K6A3_SENSOR_MIN_HEIGHT,
         S5K6A3_SENSOR_MAX_HEIGHT, 0, 0);
}
