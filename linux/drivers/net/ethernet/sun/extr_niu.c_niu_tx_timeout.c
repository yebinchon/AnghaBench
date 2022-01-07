
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int reset_task; int device; } ;
struct net_device {int name; } ;


 int dev_err (int ,char*,int ) ;
 struct niu* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void niu_tx_timeout(struct net_device *dev)
{
 struct niu *np = netdev_priv(dev);

 dev_err(np->device, "%s: Transmit timed out, resetting\n",
  dev->name);

 schedule_work(&np->reset_task);
}
