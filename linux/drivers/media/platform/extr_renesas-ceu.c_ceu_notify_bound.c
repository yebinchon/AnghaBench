
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {struct v4l2_device* v4l2_dev; } ;
struct ceu_subdev {struct v4l2_subdev* v4l2_sd; } ;
struct ceu_device {int num_sd; } ;


 struct ceu_subdev* to_ceu_subdev (struct v4l2_async_subdev*) ;
 struct ceu_device* v4l2_to_ceu (struct v4l2_device*) ;

__attribute__((used)) static int ceu_notify_bound(struct v4l2_async_notifier *notifier,
       struct v4l2_subdev *v4l2_sd,
       struct v4l2_async_subdev *asd)
{
 struct v4l2_device *v4l2_dev = notifier->v4l2_dev;
 struct ceu_device *ceudev = v4l2_to_ceu(v4l2_dev);
 struct ceu_subdev *ceu_sd = to_ceu_subdev(asd);

 ceu_sd->v4l2_sd = v4l2_sd;
 ceudev->num_sd++;

 return 0;
}
