
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_state {int std; scalar_t__ output; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int V4L2_STD_525_60 ;
 struct venc_state* to_state (struct v4l2_subdev*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 int venc_s_routing (struct v4l2_subdev*,int ,scalar_t__,int ) ;
 int venc_s_std_output (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int venc_initialize(struct v4l2_subdev *sd)
{
 struct venc_state *venc = to_state(sd);
 int ret;


 venc->output = 0;
 venc->std = V4L2_STD_525_60;

 ret = venc_s_routing(sd, 0, venc->output, 0);
 if (ret < 0) {
  v4l2_err(sd, "Error setting output during init\n");
  return -EINVAL;
 }

 ret = venc_s_std_output(sd, venc->std);
 if (ret < 0) {
  v4l2_err(sd, "Error setting std during init\n");
  return -EINVAL;
 }

 return ret;
}
