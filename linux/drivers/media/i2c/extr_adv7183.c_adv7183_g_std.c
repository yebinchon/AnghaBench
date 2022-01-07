
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv7183 {int std; } ;


 struct adv7183* to_adv7183 (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7183_g_std(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct adv7183 *decoder = to_adv7183(sd);

 *std = decoder->std;
 return 0;
}
