
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {struct v4l2_async_notifier* subdev_notifier; struct device* dev; } ;
struct v4l2_async_notifier {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
typedef int parse_endpoint_func ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 struct fwnode_handle* dev_fwnode (struct device*) ;
 int fwnode_device_is_available (struct fwnode_handle*) ;
 int kfree (struct v4l2_async_notifier*) ;
 struct v4l2_async_notifier* kzalloc (int,int ) ;
 int v4l2_async_notifier_cleanup (struct v4l2_async_notifier*) ;
 int v4l2_async_notifier_init (struct v4l2_async_notifier*) ;
 int v4l2_async_notifier_parse_fwnode_endpoints (struct device*,struct v4l2_async_notifier*,size_t,int ) ;
 int v4l2_async_notifier_parse_fwnode_endpoints_by_port (struct device*,struct v4l2_async_notifier*,size_t,unsigned int,int ) ;
 int v4l2_async_notifier_unregister (struct v4l2_async_notifier*) ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_async_subdev_notifier_register (struct v4l2_subdev*,struct v4l2_async_notifier*) ;

int v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
          size_t asd_struct_size,
          unsigned int *ports,
          unsigned int num_ports,
          parse_endpoint_func parse_endpoint)
{
 struct v4l2_async_notifier *notifier;
 struct device *dev = sd->dev;
 struct fwnode_handle *fwnode;
 int ret;

 if (WARN_ON(!dev))
  return -ENODEV;

 fwnode = dev_fwnode(dev);
 if (!fwnode_device_is_available(fwnode))
  return -ENODEV;

 notifier = kzalloc(sizeof(*notifier), GFP_KERNEL);
 if (!notifier)
  return -ENOMEM;

 v4l2_async_notifier_init(notifier);

 if (!ports) {
  ret = v4l2_async_notifier_parse_fwnode_endpoints(dev, notifier,
         asd_struct_size,
         parse_endpoint);
  if (ret < 0)
   goto out_cleanup;
 } else {
  unsigned int i;

  for (i = 0; i < num_ports; i++) {
   ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(dev, notifier, asd_struct_size, ports[i], parse_endpoint);
   if (ret < 0)
    goto out_cleanup;
  }
 }

 ret = v4l2_async_subdev_notifier_register(sd, notifier);
 if (ret < 0)
  goto out_cleanup;

 ret = v4l2_async_register_subdev(sd);
 if (ret < 0)
  goto out_unregister;

 sd->subdev_notifier = notifier;

 return 0;

out_unregister:
 v4l2_async_notifier_unregister(notifier);
out_cleanup:
 v4l2_async_notifier_cleanup(notifier);
 kfree(notifier);

 return ret;
}
