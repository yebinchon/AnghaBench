
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hinic_dev {int dummy; } ;


 int drv ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;

__attribute__((used)) static void hinic_tx_timeout(struct net_device *netdev)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);

 netif_err(nic_dev, drv, netdev, "Tx timeout\n");
}
