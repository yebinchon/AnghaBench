
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int adapter_id; unsigned short address; } ;
struct TYPE_4__ {TYPE_1__ i2c; } ;
struct v4l2_async_subdev {TYPE_2__ match; int match_type; } ;
struct v4l2_async_notifier {int dummy; } ;


 int ENOMEM ;
 struct v4l2_async_subdev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int V4L2_ASYNC_MATCH_I2C ;
 int kfree (struct v4l2_async_subdev*) ;
 struct v4l2_async_subdev* kzalloc (unsigned int,int ) ;
 int v4l2_async_notifier_add_subdev (struct v4l2_async_notifier*,struct v4l2_async_subdev*) ;

struct v4l2_async_subdev *
v4l2_async_notifier_add_i2c_subdev(struct v4l2_async_notifier *notifier,
       int adapter_id, unsigned short address,
       unsigned int asd_struct_size)
{
 struct v4l2_async_subdev *asd;
 int ret;

 asd = kzalloc(asd_struct_size, GFP_KERNEL);
 if (!asd)
  return ERR_PTR(-ENOMEM);

 asd->match_type = V4L2_ASYNC_MATCH_I2C;
 asd->match.i2c.adapter_id = adapter_id;
 asd->match.i2c.address = address;

 ret = v4l2_async_notifier_add_subdev(notifier, asd);
 if (ret) {
  kfree(asd);
  return ERR_PTR(ret);
 }

 return asd;
}
