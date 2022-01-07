
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hdlc_proto {int module; } ;
struct TYPE_2__ {struct hdlc_proto* proto; int * state; } ;


 int ENOBUFS ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int detach_hdlc_protocol (struct net_device*) ;
 TYPE_1__* dev_to_hdlc (struct net_device*) ;
 int * kmalloc (size_t,int ) ;
 int module_put (int ) ;
 int try_module_get (int ) ;

int attach_hdlc_protocol(struct net_device *dev, struct hdlc_proto *proto,
    size_t size)
{
 int err;

 err = detach_hdlc_protocol(dev);
 if (err)
  return err;

 if (!try_module_get(proto->module))
  return -ENOSYS;

 if (size) {
  dev_to_hdlc(dev)->state = kmalloc(size, GFP_KERNEL);
  if (dev_to_hdlc(dev)->state == ((void*)0)) {
   module_put(proto->module);
   return -ENOBUFS;
  }
 }
 dev_to_hdlc(dev)->proto = proto;

 return 0;
}
