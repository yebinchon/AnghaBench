
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct ena_adapter {int ena_dev; } ;


 int drv ;
 int ena_com_set_dev_mtu (int ,int) ;
 struct ena_adapter* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ena_adapter*,int ,struct net_device*,char*,int) ;
 int netif_err (struct ena_adapter*,int ,struct net_device*,char*,int) ;
 int update_rx_ring_mtu (struct ena_adapter*,int) ;

__attribute__((used)) static int ena_change_mtu(struct net_device *dev, int new_mtu)
{
 struct ena_adapter *adapter = netdev_priv(dev);
 int ret;

 ret = ena_com_set_dev_mtu(adapter->ena_dev, new_mtu);
 if (!ret) {
  netif_dbg(adapter, drv, dev, "set MTU to %d\n", new_mtu);
  update_rx_ring_mtu(adapter, new_mtu);
  dev->mtu = new_mtu;
 } else {
  netif_err(adapter, drv, dev, "Failed to set MTU to %d\n",
     new_mtu);
 }

 return ret;
}
