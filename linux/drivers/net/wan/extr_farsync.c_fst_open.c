
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fst_port_info {scalar_t__ mode; } ;


 int EBUSY ;
 scalar_t__ FST_RAW ;
 int THIS_MODULE ;
 struct fst_port_info* dev_to_port (struct net_device*) ;
 int fst_openport (struct fst_port_info*) ;
 int hdlc_open (struct net_device*) ;
 int module_put (int ) ;
 int netif_wake_queue (struct net_device*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int
fst_open(struct net_device *dev)
{
 int err;
 struct fst_port_info *port;

 port = dev_to_port(dev);
 if (!try_module_get(THIS_MODULE))
          return -EBUSY;

 if (port->mode != FST_RAW) {
  err = hdlc_open(dev);
  if (err) {
   module_put(THIS_MODULE);
   return err;
  }
 }

 fst_openport(port);
 netif_wake_queue(dev);
 return 0;
}
