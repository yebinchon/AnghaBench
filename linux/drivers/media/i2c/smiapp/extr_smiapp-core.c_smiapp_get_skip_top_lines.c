
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {int image_start; } ;


 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int smiapp_get_skip_top_lines(struct v4l2_subdev *subdev, u32 *lines)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);

 *lines = sensor->image_start;

 return 0;
}
