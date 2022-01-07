
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int LAPB_OK ;
 int lapb_unregister (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int lapbeth_close(struct net_device *dev)
{
 int err;

 netif_stop_queue(dev);

 if ((err = lapb_unregister(dev)) != LAPB_OK)
  pr_err("lapb_unregister error: %d\n", err);

 return 0;
}
