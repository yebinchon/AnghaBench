
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_ctrl {int val; } ;
struct s5c73m3 {int sensor_sd; } ;


 int REG_AF_STATUS ;
 int V4L2_AUTO_FOCUS_STATUS_BUSY ;
 int V4L2_AUTO_FOCUS_STATUS_FAILED ;
 int V4L2_AUTO_FOCUS_STATUS_REACHED ;
 int s5c73m3_read (struct s5c73m3*,int ,int*) ;
 int v4l2_info (int *,char*,int) ;

__attribute__((used)) static int s5c73m3_get_af_status(struct s5c73m3 *state, struct v4l2_ctrl *ctrl)
{
 u16 reg = 132;

 int ret = s5c73m3_read(state, REG_AF_STATUS, &reg);

 switch (reg) {
 case 131:
 case 134:
 case 129:
  ctrl->val = V4L2_AUTO_FOCUS_STATUS_BUSY;
  break;
 case 130:
 case 135:
  ctrl->val = V4L2_AUTO_FOCUS_STATUS_REACHED;
  break;
 default:
  v4l2_info(&state->sensor_sd, "Unknown AF status %#x\n", reg);

 case 128:
 case 132:
 case 133:
  ctrl->val = V4L2_AUTO_FOCUS_STATUS_FAILED;
  break;
 }

 return ret;
}
