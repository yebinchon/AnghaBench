
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct rcar_csi2 {int dev; int * remote; } ;


 int dev_dbg (int ,char*,int ) ;
 struct rcar_csi2* notifier_to_csi2 (struct v4l2_async_notifier*) ;

__attribute__((used)) static void rcsi2_notify_unbind(struct v4l2_async_notifier *notifier,
    struct v4l2_subdev *subdev,
    struct v4l2_async_subdev *asd)
{
 struct rcar_csi2 *priv = notifier_to_csi2(notifier);

 priv->remote = ((void*)0);

 dev_dbg(priv->dev, "Unbind %s\n", subdev->name);
}
