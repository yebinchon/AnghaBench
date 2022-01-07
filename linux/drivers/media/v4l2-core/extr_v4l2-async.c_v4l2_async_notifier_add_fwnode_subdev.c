
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fwnode; } ;
struct v4l2_async_subdev {TYPE_1__ match; int match_type; } ;
struct v4l2_async_notifier {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int ENOMEM ;
 struct v4l2_async_subdev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int V4L2_ASYNC_MATCH_FWNODE ;
 int fwnode_handle_get (struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int kfree (struct v4l2_async_subdev*) ;
 struct v4l2_async_subdev* kzalloc (unsigned int,int ) ;
 int v4l2_async_notifier_add_subdev (struct v4l2_async_notifier*,struct v4l2_async_subdev*) ;

struct v4l2_async_subdev *
v4l2_async_notifier_add_fwnode_subdev(struct v4l2_async_notifier *notifier,
          struct fwnode_handle *fwnode,
          unsigned int asd_struct_size)
{
 struct v4l2_async_subdev *asd;
 int ret;

 asd = kzalloc(asd_struct_size, GFP_KERNEL);
 if (!asd)
  return ERR_PTR(-ENOMEM);

 asd->match_type = V4L2_ASYNC_MATCH_FWNODE;
 asd->match.fwnode = fwnode_handle_get(fwnode);

 ret = v4l2_async_notifier_add_subdev(notifier, asd);
 if (ret) {
  fwnode_handle_put(fwnode);
  kfree(asd);
  return ERR_PTR(ret);
 }

 return asd;
}
