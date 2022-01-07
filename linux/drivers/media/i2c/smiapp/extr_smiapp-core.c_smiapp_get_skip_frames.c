
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {int frame_skip; } ;


 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int smiapp_get_skip_frames(struct v4l2_subdev *subdev, u32 *frames)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);

 *frames = sensor->frame_skip;
 return 0;
}
