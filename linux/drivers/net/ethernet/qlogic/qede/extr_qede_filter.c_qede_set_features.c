
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
struct qede_reload_args {int (* func ) (struct qede_dev*,struct qede_reload_args*) ;TYPE_1__ u; } ;
struct qede_dev {scalar_t__ xdp_prog; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_GRO_HW ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_reload (struct qede_dev*,struct qede_reload_args*,int) ;
 int qede_set_features_reload (struct qede_dev*,struct qede_reload_args*) ;
 int stub1 (struct qede_dev*,struct qede_reload_args*) ;

int qede_set_features(struct net_device *dev, netdev_features_t features)
{
 struct qede_dev *edev = netdev_priv(dev);
 netdev_features_t changes = features ^ dev->features;
 bool need_reload = 0;

 if (changes & NETIF_F_GRO_HW)
  need_reload = 1;

 if (need_reload) {
  struct qede_reload_args args;

  args.u.features = features;
  args.func = &qede_set_features_reload;





  __qede_lock(edev);
  if (edev->xdp_prog)
   args.func(edev, &args);
  else
   qede_reload(edev, &args, 1);
  __qede_unlock(edev);

  return 1;
 }

 return 0;
}
