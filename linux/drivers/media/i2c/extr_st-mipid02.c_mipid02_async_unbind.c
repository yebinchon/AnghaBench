
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int sd; } ;
struct mipid02_dev {int * s_subdev; } ;


 struct mipid02_dev* to_mipid02_dev (int ) ;

__attribute__((used)) static void mipid02_async_unbind(struct v4l2_async_notifier *notifier,
     struct v4l2_subdev *s_subdev,
     struct v4l2_async_subdev *asd)
{
 struct mipid02_dev *bridge = to_mipid02_dev(notifier->sd);

 bridge->s_subdev = ((void*)0);
}
