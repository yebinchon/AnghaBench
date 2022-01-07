
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int norm; } ;


 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_g_std(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct tvp5150 *decoder = to_tvp5150(sd);

 *std = decoder->norm;

 return 0;
}
