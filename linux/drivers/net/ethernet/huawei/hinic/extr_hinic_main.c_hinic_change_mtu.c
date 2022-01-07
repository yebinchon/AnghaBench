
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct hinic_dev {int dummy; } ;


 int drv ;
 int hinic_port_set_mtu (struct hinic_dev*,int) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;
 int netif_info (struct hinic_dev*,int ,struct net_device*,char*,int) ;

__attribute__((used)) static int hinic_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 int err;

 netif_info(nic_dev, drv, netdev, "set_mtu = %d\n", new_mtu);

 err = hinic_port_set_mtu(nic_dev, new_mtu);
 if (err)
  netif_err(nic_dev, drv, netdev, "Failed to set port mtu\n");
 else
  netdev->mtu = new_mtu;

 return err;
}
