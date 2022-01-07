
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct be_adapter {int err_flags; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int ) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static inline void be_set_error(struct be_adapter *adapter, int err_type)
{
 struct net_device *netdev = adapter->netdev;

 adapter->err_flags |= err_type;
 netif_carrier_off(netdev);

 dev_info(&adapter->pdev->dev, "%s: Link down\n", netdev->name);
}
