
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dev_state; int msg_enable; int vxlan_ports; int mdio_complete; int i2c_complete; int i2c_mutex; int tstamp_lock; int rss_mutex; int xpcs_lock; int lock; struct device* dev; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct xgbe_prv_data* ERR_PTR (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int XGBE_DOWN ;
 int XGBE_MAX_DMA_CHANNELS ;
 int XGBE_STOPPED ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int debug ;
 int default_msg_level ;
 int dev_err (struct device*,char*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

struct xgbe_prv_data *xgbe_alloc_pdata(struct device *dev)
{
 struct xgbe_prv_data *pdata;
 struct net_device *netdev;

 netdev = alloc_etherdev_mq(sizeof(struct xgbe_prv_data),
       XGBE_MAX_DMA_CHANNELS);
 if (!netdev) {
  dev_err(dev, "alloc_etherdev_mq failed\n");
  return ERR_PTR(-ENOMEM);
 }
 SET_NETDEV_DEV(netdev, dev);
 pdata = netdev_priv(netdev);
 pdata->netdev = netdev;
 pdata->dev = dev;

 spin_lock_init(&pdata->lock);
 spin_lock_init(&pdata->xpcs_lock);
 mutex_init(&pdata->rss_mutex);
 spin_lock_init(&pdata->tstamp_lock);
 mutex_init(&pdata->i2c_mutex);
 init_completion(&pdata->i2c_complete);
 init_completion(&pdata->mdio_complete);
 INIT_LIST_HEAD(&pdata->vxlan_ports);

 pdata->msg_enable = netif_msg_init(debug, default_msg_level);

 set_bit(XGBE_DOWN, &pdata->dev_state);
 set_bit(XGBE_STOPPED, &pdata->dev_state);

 return pdata;
}
