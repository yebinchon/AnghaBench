
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {unsigned int ssds_used; TYPE_1__* ssds; } ;
struct TYPE_2__ {int sd; } ;


 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static void smiapp_unregistered(struct v4l2_subdev *subdev)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);
 unsigned int i;

 for (i = 1; i < sensor->ssds_used; i++)
  v4l2_device_unregister_subdev(&sensor->ssds[i].sd);
}
