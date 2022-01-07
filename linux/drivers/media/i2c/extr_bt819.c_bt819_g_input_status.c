
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int bt819_status (struct v4l2_subdev*,int *,int *) ;

__attribute__((used)) static int bt819_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 return bt819_status(sd, status, ((void*)0));
}
