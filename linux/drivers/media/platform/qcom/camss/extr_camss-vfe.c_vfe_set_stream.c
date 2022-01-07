
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_line {int dummy; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 struct vfe_line* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int vfe_disable (struct vfe_line*) ;
 int vfe_enable (struct vfe_line*) ;

__attribute__((used)) static int vfe_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct vfe_line *line = v4l2_get_subdevdata(sd);
 struct vfe_device *vfe = to_vfe(line);
 int ret;

 if (enable) {
  ret = vfe_enable(line);
  if (ret < 0)
   dev_err(vfe->camss->dev,
    "Failed to enable vfe outputs\n");
 } else {
  ret = vfe_disable(line);
  if (ret < 0)
   dev_err(vfe->camss->dev,
    "Failed to disable vfe outputs\n");
 }

 return ret;
}
