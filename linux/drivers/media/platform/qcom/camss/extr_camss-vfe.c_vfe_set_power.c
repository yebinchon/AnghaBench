
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfe_line {int dummy; } ;
struct vfe_device {TYPE_2__* camss; TYPE_1__* ops; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* hw_version_read ) (struct vfe_device*,int ) ;} ;


 int stub1 (struct vfe_device*,int ) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 struct vfe_line* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int vfe_get (struct vfe_device*) ;
 int vfe_put (struct vfe_device*) ;

__attribute__((used)) static int vfe_set_power(struct v4l2_subdev *sd, int on)
{
 struct vfe_line *line = v4l2_get_subdevdata(sd);
 struct vfe_device *vfe = to_vfe(line);
 int ret;

 if (on) {
  ret = vfe_get(vfe);
  if (ret < 0)
   return ret;

  vfe->ops->hw_version_read(vfe, vfe->camss->dev);
 } else {
  vfe_put(vfe);
 }

 return 0;
}
