
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {int update_mc_list; } ;


 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_mc_list_update(struct net_device *netdev,
        const unsigned char *addr)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 adapter->update_mc_list = 1;
 return 0;
}
