
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {int sensor_sd; } ;


 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static void s5c73m3_oif_unregistered(struct v4l2_subdev *sd)
{
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);
 v4l2_device_unregister_subdev(&state->sensor_sd);
}
