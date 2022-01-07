
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_afe {int curr_norm; } ;


 struct adv748x_afe* adv748x_sd_to_afe (struct v4l2_subdev*) ;

__attribute__((used)) static int adv748x_afe_g_std(struct v4l2_subdev *sd, v4l2_std_id *norm)
{
 struct adv748x_afe *afe = adv748x_sd_to_afe(sd);

 *norm = afe->curr_norm;

 return 0;
}
