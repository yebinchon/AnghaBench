
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; int v4l2_dev; } ;
struct v4l2_device {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct adv748x_csi2 {struct v4l2_subdev* src; TYPE_1__ sd; } ;


 int ADV748X_CSI2_SINK ;
 int MEDIA_LNK_FL_ENABLED ;
 int media_create_pad_link (int *,unsigned int,int *,int ,int ) ;
 int v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;

__attribute__((used)) static int adv748x_csi2_register_link(struct adv748x_csi2 *tx,
          struct v4l2_device *v4l2_dev,
          struct v4l2_subdev *src,
          unsigned int src_pad,
          bool enable)
{
 int ret;

 if (!src->v4l2_dev) {
  ret = v4l2_device_register_subdev(v4l2_dev, src);
  if (ret)
   return ret;
 }

 ret = media_create_pad_link(&src->entity, src_pad,
        &tx->sd.entity, ADV748X_CSI2_SINK,
        enable ? MEDIA_LNK_FL_ENABLED : 0);
 if (ret)
  return ret;

 if (enable)
  tx->src = src;

 return 0;
}
