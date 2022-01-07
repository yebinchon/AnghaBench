
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int flags; int napi; } ;
struct net_device {int irq; } ;


 int VELOCITY_FLAGS_OPENED ;
 int VELOCITY_FLAGS_WOL_ENABLED ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int velocity_free_rings (struct velocity_info*) ;
 int velocity_get_ip (struct velocity_info*) ;
 int velocity_shutdown (struct velocity_info*) ;

__attribute__((used)) static int velocity_close(struct net_device *dev)
{
 struct velocity_info *vptr = netdev_priv(dev);

 napi_disable(&vptr->napi);
 netif_stop_queue(dev);
 velocity_shutdown(vptr);

 if (vptr->flags & VELOCITY_FLAGS_WOL_ENABLED)
  velocity_get_ip(vptr);

 free_irq(dev->irq, dev);

 velocity_free_rings(vptr);

 vptr->flags &= (~VELOCITY_FLAGS_OPENED);
 return 0;
}
