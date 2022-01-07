
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int debug ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;
 int vpx3220_status (struct v4l2_subdev*,int *,int *) ;

__attribute__((used)) static int vpx3220_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 v4l2_dbg(1, debug, sd, "g_input_status\n");
 return vpx3220_status(sd, status, ((void*)0));
}
