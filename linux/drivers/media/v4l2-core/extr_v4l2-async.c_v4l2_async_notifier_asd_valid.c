
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_async_subdev {int match_type; } ;
struct v4l2_async_notifier {TYPE_1__* v4l2_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EEXIST ;
 int EINVAL ;




 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int,struct v4l2_async_subdev*) ;
 int v4l2_async_notifier_has_async_subdev (struct v4l2_async_notifier*,struct v4l2_async_subdev*,int) ;

__attribute__((used)) static int v4l2_async_notifier_asd_valid(struct v4l2_async_notifier *notifier,
      struct v4l2_async_subdev *asd,
      int this_index)
{
 struct device *dev =
  notifier->v4l2_dev ? notifier->v4l2_dev->dev : ((void*)0);

 if (!asd)
  return -EINVAL;

 switch (asd->match_type) {
 case 131:
 case 130:
 case 128:
 case 129:
  if (v4l2_async_notifier_has_async_subdev(notifier, asd,
        this_index)) {
   dev_dbg(dev, "subdev descriptor already listed in this or other notifiers\n");
   return -EEXIST;
  }
  break;
 default:
  dev_err(dev, "Invalid match type %u on %p\n",
   asd->match_type, asd);
  return -EINVAL;
 }

 return 0;
}
