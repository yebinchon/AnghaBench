
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_flash {int data; } ;
struct be_adapter {int dummy; } ;


 int be_load_fw (struct be_adapter*,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_do_flash(struct net_device *netdev, struct ethtool_flash *efl)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 return be_load_fw(adapter, efl->data);
}
