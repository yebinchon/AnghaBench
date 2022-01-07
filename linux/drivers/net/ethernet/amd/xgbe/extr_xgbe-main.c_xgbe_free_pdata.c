
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;

void xgbe_free_pdata(struct xgbe_prv_data *pdata)
{
 struct net_device *netdev = pdata->netdev;

 free_netdev(netdev);
}
