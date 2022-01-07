
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int ctrl_handler; } ;
struct v4l2_querymenu {int value; int index; int id; } ;
struct v4l2_ctrl {int dummy; } ;
struct mipid02_dev {int dummy; } ;


 int V4L2_CID_LINK_FREQ ;
 struct v4l2_ctrl* v4l2_ctrl_find (int ,int ) ;
 int v4l2_ctrl_g_ctrl (struct v4l2_ctrl*) ;
 int v4l2_querymenu (int ,struct v4l2_querymenu*) ;

__attribute__((used)) static u32 mipid02_get_link_freq_from_cid_link_freq(struct mipid02_dev *bridge,
          struct v4l2_subdev *subdev)
{
 struct v4l2_querymenu qm = {.id = V4L2_CID_LINK_FREQ, };
 struct v4l2_ctrl *ctrl;
 int ret;

 ctrl = v4l2_ctrl_find(subdev->ctrl_handler, V4L2_CID_LINK_FREQ);
 if (!ctrl)
  return 0;
 qm.index = v4l2_ctrl_g_ctrl(ctrl);

 ret = v4l2_querymenu(subdev->ctrl_handler, &qm);
 if (ret)
  return 0;

 return qm.value;
}
