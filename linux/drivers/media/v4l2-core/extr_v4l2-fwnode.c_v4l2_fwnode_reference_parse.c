
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct fwnode_reference_args {int fwnode; } ;
struct device {int dummy; } ;


 int EEXIST ;
 int ENODATA ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct v4l2_async_subdev*) ;
 int PTR_ERR (struct v4l2_async_subdev*) ;
 int dev_fwnode (struct device*) ;
 int fwnode_handle_put (int ) ;
 int fwnode_property_get_reference_args (int ,char const*,int *,int ,unsigned int,struct fwnode_reference_args*) ;
 struct v4l2_async_subdev* v4l2_async_notifier_add_fwnode_subdev (struct v4l2_async_notifier*,int ,int) ;

__attribute__((used)) static int v4l2_fwnode_reference_parse(struct device *dev,
           struct v4l2_async_notifier *notifier,
           const char *prop)
{
 struct fwnode_reference_args args;
 unsigned int index;
 int ret;

 for (index = 0;
      !(ret = fwnode_property_get_reference_args(dev_fwnode(dev),
       prop, ((void*)0), 0,
       index, &args));
      index++)
  fwnode_handle_put(args.fwnode);

 if (!index)
  return -ENOENT;





 if (ret != -ENOENT && ret != -ENODATA)
  return ret;

 for (index = 0;
      !fwnode_property_get_reference_args(dev_fwnode(dev), prop, ((void*)0),
       0, index, &args);
      index++) {
  struct v4l2_async_subdev *asd;

  asd = v4l2_async_notifier_add_fwnode_subdev(notifier,
           args.fwnode,
           sizeof(*asd));
  fwnode_handle_put(args.fwnode);
  if (IS_ERR(asd)) {

   if (PTR_ERR(asd) == -EEXIST)
    continue;

   return PTR_ERR(asd);
  }
 }

 return 0;
}
