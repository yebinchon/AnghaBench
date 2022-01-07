
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port_info {int eth_flags; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int eth_flags; } ;


 int PRIV_FLAGS_ADAP ;
 int PRIV_FLAGS_PORT ;
 struct port_info* netdev_priv (struct net_device*) ;
 int set_flags (int *,int ,int ) ;

__attribute__((used)) static int cxgb4_set_priv_flags(struct net_device *netdev, u32 flags)
{
 struct port_info *pi = netdev_priv(netdev);
 struct adapter *adapter = pi->adapter;

 set_flags(&adapter->eth_flags, flags, PRIV_FLAGS_ADAP);
 set_flags(&pi->eth_flags, flags, PRIV_FLAGS_PORT);

 return 0;
}
