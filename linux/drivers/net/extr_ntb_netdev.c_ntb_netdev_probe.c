
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ntb_netdev {int qp; struct pci_dev* pdev; struct net_device* ndev; } ;
struct ntb_dev {struct pci_dev* pdev; } ;
struct net_device {int name; scalar_t__ mtu; int max_mtu; scalar_t__ min_mtu; int * ethtool_ops; int * netdev_ops; int addr_len; int perm_addr; int dev_addr; int watchdog_timeo; int features; int hw_features; int priv_flags; } ;
struct device {int parent; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ ETH_HLEN ;
 int ETH_MAX_MTU ;
 int IFF_LIVE_ADDR_CHANGE ;
 int NETIF_F_HIGHDMA ;
 int NTB_TX_TIMEOUT_MS ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_info (int *,char*,int ) ;
 struct ntb_dev* dev_ntb (int ) ;
 int dev_set_drvdata (struct device*,struct net_device*) ;
 int eth_random_addr (int ) ;
 int free_netdev (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int ntb_ethtool_ops ;
 int ntb_netdev_handlers ;
 int ntb_netdev_ops ;
 int ntb_transport_create_queue (struct net_device*,struct device*,int *) ;
 int ntb_transport_free_queue (int ) ;
 scalar_t__ ntb_transport_max_size (int ) ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int ntb_netdev_probe(struct device *client_dev)
{
 struct ntb_dev *ntb;
 struct net_device *ndev;
 struct pci_dev *pdev;
 struct ntb_netdev *dev;
 int rc;

 ntb = dev_ntb(client_dev->parent);
 pdev = ntb->pdev;
 if (!pdev)
  return -ENODEV;

 ndev = alloc_etherdev(sizeof(*dev));
 if (!ndev)
  return -ENOMEM;

 SET_NETDEV_DEV(ndev, client_dev);

 dev = netdev_priv(ndev);
 dev->ndev = ndev;
 dev->pdev = pdev;
 ndev->features = NETIF_F_HIGHDMA;

 ndev->priv_flags |= IFF_LIVE_ADDR_CHANGE;

 ndev->hw_features = ndev->features;
 ndev->watchdog_timeo = msecs_to_jiffies(NTB_TX_TIMEOUT_MS);

 eth_random_addr(ndev->perm_addr);
 memcpy(ndev->dev_addr, ndev->perm_addr, ndev->addr_len);

 ndev->netdev_ops = &ntb_netdev_ops;
 ndev->ethtool_ops = &ntb_ethtool_ops;

 ndev->min_mtu = 0;
 ndev->max_mtu = ETH_MAX_MTU;

 dev->qp = ntb_transport_create_queue(ndev, client_dev,
          &ntb_netdev_handlers);
 if (!dev->qp) {
  rc = -EIO;
  goto err;
 }

 ndev->mtu = ntb_transport_max_size(dev->qp) - ETH_HLEN;

 rc = register_netdev(ndev);
 if (rc)
  goto err1;

 dev_set_drvdata(client_dev, ndev);
 dev_info(&pdev->dev, "%s created\n", ndev->name);
 return 0;

err1:
 ntb_transport_free_queue(dev->qp);
err:
 free_netdev(ndev);
 return rc;
}
