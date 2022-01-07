
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_edid {int pad; int * edid; scalar_t__ blocks; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int check_pad (struct v4l2_subdev*,int ) ;

__attribute__((used)) static inline int check_edid(struct v4l2_subdev *sd,
        struct v4l2_subdev_edid *edid)
{
 if (!edid)
  return -EINVAL;

 if (edid->blocks && edid->edid == ((void*)0))
  return -EINVAL;

 return check_pad(sd, edid->pad);
}
