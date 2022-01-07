
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_edid {int dummy; } ;
struct v4l2_subdev {TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* pad; } ;
struct TYPE_3__ {int (* set_edid ) (struct v4l2_subdev*,struct v4l2_subdev_edid*) ;} ;


 scalar_t__ check_edid (struct v4l2_subdev*,struct v4l2_subdev_edid*) ;
 int stub1 (struct v4l2_subdev*,struct v4l2_subdev_edid*) ;

__attribute__((used)) static int call_set_edid(struct v4l2_subdev *sd, struct v4l2_subdev_edid *edid)
{
 return check_edid(sd, edid) ? : sd->ops->pad->set_edid(sd, edid);
}
