
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int ctrl_handler; } ;
struct v4l2_ctrl {int dummy; } ;
struct media_entity {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int V4L2_CID_PIXEL_RATE ;
 struct media_entity* camss_find_sensor (struct media_entity*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 struct v4l2_ctrl* v4l2_ctrl_find (int ,int ) ;
 int v4l2_ctrl_g_ctrl_int64 (struct v4l2_ctrl*) ;

int camss_get_pixel_clock(struct media_entity *entity, u32 *pixel_clock)
{
 struct media_entity *sensor;
 struct v4l2_subdev *subdev;
 struct v4l2_ctrl *ctrl;

 sensor = camss_find_sensor(entity);
 if (!sensor)
  return -ENODEV;

 subdev = media_entity_to_v4l2_subdev(sensor);

 ctrl = v4l2_ctrl_find(subdev->ctrl_handler, V4L2_CID_PIXEL_RATE);

 if (!ctrl)
  return -EINVAL;

 *pixel_clock = v4l2_ctrl_g_ctrl_int64(ctrl);

 return 0;
}
