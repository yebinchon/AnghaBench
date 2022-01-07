
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {unsigned int port_number; unsigned int pport; int napi_rx; int napi_tx; struct rocker* rocker; struct net_device* dev; } ;
struct rocker {struct rocker_port** ports; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;
struct net_device {int features; int max_mtu; int min_mtu; int * ethtool_ops; int * netdev_ops; } ;


 int ENOMEM ;
 int NAPI_POLL_WEIGHT ;
 int NETIF_F_NETNS_LOCAL ;
 int NETIF_F_SG ;
 int ROCKER_PORT_MAX_MTU ;
 int ROCKER_PORT_MIN_MTU ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (int *,char*) ;
 int free_netdev (struct net_device*) ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int netif_tx_napi_add (struct net_device*,int *,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int rocker_carrier_init (struct rocker_port*) ;
 int rocker_port_dev_addr_init (struct rocker_port*) ;
 int rocker_port_ethtool_ops ;
 int rocker_port_netdev_ops ;
 int rocker_port_poll_rx ;
 int rocker_port_poll_tx ;
 int rocker_world_check_init (struct rocker_port*) ;
 int rocker_world_port_init (struct rocker_port*) ;
 int rocker_world_port_post_fini (struct rocker_port*) ;
 int rocker_world_port_pre_init (struct rocker_port*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int rocker_probe_port(struct rocker *rocker, unsigned int port_number)
{
 struct pci_dev *pdev = rocker->pdev;
 struct rocker_port *rocker_port;
 struct net_device *dev;
 int err;

 dev = alloc_etherdev(sizeof(struct rocker_port));
 if (!dev)
  return -ENOMEM;
 SET_NETDEV_DEV(dev, &pdev->dev);
 rocker_port = netdev_priv(dev);
 rocker_port->dev = dev;
 rocker_port->rocker = rocker;
 rocker_port->port_number = port_number;
 rocker_port->pport = port_number + 1;

 err = rocker_world_check_init(rocker_port);
 if (err) {
  dev_err(&pdev->dev, "world init failed\n");
  goto err_world_check_init;
 }

 rocker_port_dev_addr_init(rocker_port);
 dev->netdev_ops = &rocker_port_netdev_ops;
 dev->ethtool_ops = &rocker_port_ethtool_ops;
 netif_tx_napi_add(dev, &rocker_port->napi_tx, rocker_port_poll_tx,
     NAPI_POLL_WEIGHT);
 netif_napi_add(dev, &rocker_port->napi_rx, rocker_port_poll_rx,
         NAPI_POLL_WEIGHT);
 rocker_carrier_init(rocker_port);

 dev->features |= NETIF_F_NETNS_LOCAL | NETIF_F_SG;


 dev->min_mtu = ROCKER_PORT_MIN_MTU;
 dev->max_mtu = ROCKER_PORT_MAX_MTU;

 err = rocker_world_port_pre_init(rocker_port);
 if (err) {
  dev_err(&pdev->dev, "port world pre-init failed\n");
  goto err_world_port_pre_init;
 }
 err = register_netdev(dev);
 if (err) {
  dev_err(&pdev->dev, "register_netdev failed\n");
  goto err_register_netdev;
 }
 rocker->ports[port_number] = rocker_port;

 err = rocker_world_port_init(rocker_port);
 if (err) {
  dev_err(&pdev->dev, "port world init failed\n");
  goto err_world_port_init;
 }

 return 0;

err_world_port_init:
 rocker->ports[port_number] = ((void*)0);
 unregister_netdev(dev);
err_register_netdev:
 rocker_world_port_post_fini(rocker_port);
err_world_port_pre_init:
err_world_check_init:
 free_netdev(dev);
 return err;
}
