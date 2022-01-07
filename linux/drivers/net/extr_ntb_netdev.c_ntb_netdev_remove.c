
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_netdev {int qp; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int free_netdev (struct net_device*) ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int ntb_transport_free_queue (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ntb_netdev_remove(struct device *client_dev)
{
 struct net_device *ndev = dev_get_drvdata(client_dev);
 struct ntb_netdev *dev = netdev_priv(ndev);

 unregister_netdev(ndev);
 ntb_transport_free_queue(dev->qp);
 free_netdev(ndev);
}
