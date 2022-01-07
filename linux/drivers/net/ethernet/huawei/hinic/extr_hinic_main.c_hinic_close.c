
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hinic_dev {unsigned int flags; int hwdev; int rss_tmpl_idx; int mgmt_lock; } ;


 int HINIC_FUNC_PORT_DISABLE ;
 unsigned int HINIC_INTF_UP ;
 int HINIC_PORT_DISABLE ;
 int HINIC_RSS_ENABLE ;
 int down (int *) ;
 int drv ;
 int free_rxqs (struct hinic_dev*) ;
 int free_txqs (struct hinic_dev*) ;
 int hinic_hwdev_ifdown (int ) ;
 int hinic_port_set_func_state (struct hinic_dev*,int ) ;
 int hinic_port_set_state (struct hinic_dev*,int ) ;
 int hinic_rss_deinit (struct hinic_dev*) ;
 int hinic_rss_template_free (struct hinic_dev*,int ) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;
 int netif_info (struct hinic_dev*,int ,struct net_device*,char*) ;
 int netif_tx_disable (struct net_device*) ;
 int up (int *) ;
 int update_nic_stats (struct hinic_dev*) ;

__attribute__((used)) static int hinic_close(struct net_device *netdev)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 unsigned int flags;
 int err;

 down(&nic_dev->mgmt_lock);

 flags = nic_dev->flags;
 nic_dev->flags &= ~HINIC_INTF_UP;

 netif_carrier_off(netdev);
 netif_tx_disable(netdev);

 update_nic_stats(nic_dev);

 up(&nic_dev->mgmt_lock);

 err = hinic_port_set_func_state(nic_dev, HINIC_FUNC_PORT_DISABLE);
 if (err) {
  netif_err(nic_dev, drv, netdev,
     "Failed to set func port state\n");
  nic_dev->flags |= (flags & HINIC_INTF_UP);
  return err;
 }

 err = hinic_port_set_state(nic_dev, HINIC_PORT_DISABLE);
 if (err) {
  netif_err(nic_dev, drv, netdev, "Failed to set port state\n");
  nic_dev->flags |= (flags & HINIC_INTF_UP);
  return err;
 }

 if (nic_dev->flags & HINIC_RSS_ENABLE) {
  hinic_rss_deinit(nic_dev);
  hinic_rss_template_free(nic_dev, nic_dev->rss_tmpl_idx);
 }

 free_rxqs(nic_dev);
 free_txqs(nic_dev);

 if (flags & HINIC_INTF_UP)
  hinic_hwdev_ifdown(nic_dev->hwdev);

 netif_info(nic_dev, drv, netdev, "HINIC_INTF is DOWN\n");
 return 0;
}
