
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fjes_adapter {int napi; struct net_device* netdev; } ;


 int fjes_poll ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;

__attribute__((used)) static int fjes_sw_init(struct fjes_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 netif_napi_add(netdev, &adapter->napi, fjes_poll, 64);

 return 0;
}
