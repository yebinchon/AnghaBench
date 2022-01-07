
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venc_state {int output; } ;
struct v4l2_subdev {int dummy; } ;


 int debug ;
 struct venc_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int ,int,struct v4l2_subdev*,char*) ;
 int venc_set_dac (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int venc_s_routing(struct v4l2_subdev *sd, u32 input, u32 output,
     u32 config)
{
 struct venc_state *venc = to_state(sd);
 int ret;

 v4l2_dbg(debug, 1, sd, "venc_s_routing\n");

 ret = venc_set_dac(sd, output);
 if (!ret)
  venc->output = output;

 return ret;
}
