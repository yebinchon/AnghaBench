
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ENODEV ;
 int LAPB_OK ;
 int lapb_register (struct net_device*,int *) ;
 int lapbeth_callbacks ;
 int netif_start_queue (struct net_device*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int lapbeth_open(struct net_device *dev)
{
 int err;

 if ((err = lapb_register(dev, &lapbeth_callbacks)) != LAPB_OK) {
  pr_err("lapb_register error: %d\n", err);
  return -ENODEV;
 }

 netif_start_queue(dev);
 return 0;
}
