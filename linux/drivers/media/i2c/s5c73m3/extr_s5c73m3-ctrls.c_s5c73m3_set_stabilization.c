
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {struct v4l2_subdev sensor_sd; } ;


 int COMM_FRAME_RATE ;
 int COMM_FRAME_RATE_ANTI_SHAKE ;
 int COMM_FRAME_RATE_AUTO_SET ;
 int s5c73m3_dbg ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int s5c73m3_set_stabilization(struct s5c73m3 *state, int val)
{
 struct v4l2_subdev *sd = &state->sensor_sd;

 v4l2_dbg(1, s5c73m3_dbg, sd, "Image stabilization: %d\n", val);

 return s5c73m3_isp_command(state, COMM_FRAME_RATE, val ?
   COMM_FRAME_RATE_ANTI_SHAKE : COMM_FRAME_RATE_AUTO_SET);
}
