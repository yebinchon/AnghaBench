
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int * device; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int free_netdev (struct net_device*) ;
 int mac_onboard_sonic_probe (struct net_device*) ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int sonic_msg_init (struct net_device*) ;

__attribute__((used)) static int mac_sonic_platform_probe(struct platform_device *pdev)
{
 struct net_device *dev;
 struct sonic_local *lp;
 int err;

 dev = alloc_etherdev(sizeof(struct sonic_local));
 if (!dev)
  return -ENOMEM;

 lp = netdev_priv(dev);
 lp->device = &pdev->dev;
 SET_NETDEV_DEV(dev, &pdev->dev);
 platform_set_drvdata(pdev, dev);

 err = mac_onboard_sonic_probe(dev);
 if (err)
  goto out;

 sonic_msg_init(dev);

 err = register_netdev(dev);
 if (err)
  goto out;

 return 0;

out:
 free_netdev(dev);

 return err;
}
