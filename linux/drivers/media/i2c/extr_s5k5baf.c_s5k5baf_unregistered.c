
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5k5baf {int cis_sd; } ;


 struct s5k5baf* to_s5k5baf (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static void s5k5baf_unregistered(struct v4l2_subdev *sd)
{
 struct s5k5baf *state = to_s5k5baf(sd);
 v4l2_device_unregister_subdev(&state->cis_sd);
}
