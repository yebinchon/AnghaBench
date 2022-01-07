
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* unbind ) (struct v4l2_async_notifier*,struct v4l2_subdev*,struct v4l2_async_subdev*) ;} ;


 int stub1 (struct v4l2_async_notifier*,struct v4l2_subdev*,struct v4l2_async_subdev*) ;

__attribute__((used)) static void v4l2_async_notifier_call_unbind(struct v4l2_async_notifier *n,
         struct v4l2_subdev *subdev,
         struct v4l2_async_subdev *asd)
{
 if (!n->ops || !n->ops->unbind)
  return;

 n->ops->unbind(n, subdev, asd);
}
