
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* device_name; } ;
struct v4l2_async_subdev {TYPE_1__ match; int match_type; } ;
struct v4l2_async_notifier {int dummy; } ;


 int ENOMEM ;
 struct v4l2_async_subdev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int V4L2_ASYNC_MATCH_DEVNAME ;
 int kfree (struct v4l2_async_subdev*) ;
 struct v4l2_async_subdev* kzalloc (unsigned int,int ) ;
 int v4l2_async_notifier_add_subdev (struct v4l2_async_notifier*,struct v4l2_async_subdev*) ;

struct v4l2_async_subdev *
v4l2_async_notifier_add_devname_subdev(struct v4l2_async_notifier *notifier,
           const char *device_name,
           unsigned int asd_struct_size)
{
 struct v4l2_async_subdev *asd;
 int ret;

 asd = kzalloc(asd_struct_size, GFP_KERNEL);
 if (!asd)
  return ERR_PTR(-ENOMEM);

 asd->match_type = V4L2_ASYNC_MATCH_DEVNAME;
 asd->match.device_name = device_name;

 ret = v4l2_async_notifier_add_subdev(notifier, asd);
 if (ret) {
  kfree(asd);
  return ERR_PTR(ret);
 }

 return asd;
}
