
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct v4l2_subdev {int name; int ctrl_handler; } ;
struct v4l2_ctrl {int dummy; } ;
struct rcar_csi2 {int lanes; int dev; struct v4l2_subdev* remote; } ;


 int EINVAL ;
 int ENODEV ;
 int V4L2_CID_PIXEL_RATE ;
 int dev_err (int ,char*,int ) ;
 int do_div (int,int) ;
 struct v4l2_ctrl* v4l2_ctrl_find (int ,int ) ;
 unsigned int v4l2_ctrl_g_ctrl_int64 (struct v4l2_ctrl*) ;

__attribute__((used)) static int rcsi2_calc_mbps(struct rcar_csi2 *priv, unsigned int bpp)
{
 struct v4l2_subdev *source;
 struct v4l2_ctrl *ctrl;
 u64 mbps;

 if (!priv->remote)
  return -ENODEV;

 source = priv->remote;


 ctrl = v4l2_ctrl_find(source->ctrl_handler, V4L2_CID_PIXEL_RATE);
 if (!ctrl) {
  dev_err(priv->dev, "no pixel rate control in subdev %s\n",
   source->name);
  return -EINVAL;
 }






 mbps = v4l2_ctrl_g_ctrl_int64(ctrl) * bpp;
 do_div(mbps, priv->lanes * 1000000);

 return mbps;
}
