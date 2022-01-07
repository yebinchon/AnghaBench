
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;


 int ENOMEM ;
 struct mei_cl* ERR_PTR (int) ;
 int kfree (struct mei_cl*) ;
 struct mei_cl* mei_cl_allocate (struct mei_device*) ;
 int mei_cl_link (struct mei_cl*) ;

struct mei_cl *mei_cl_alloc_linked(struct mei_device *dev)
{
 struct mei_cl *cl;
 int ret;

 cl = mei_cl_allocate(dev);
 if (!cl) {
  ret = -ENOMEM;
  goto err;
 }

 ret = mei_cl_link(cl);
 if (ret)
  goto err;

 return cl;
err:
 kfree(cl);
 return ERR_PTR(ret);
}
