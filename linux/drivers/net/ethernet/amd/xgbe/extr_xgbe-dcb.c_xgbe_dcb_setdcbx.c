
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xgbe_prv_data {int dummy; } ;
struct net_device {int dummy; } ;


 int drv ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int netif_dbg (struct xgbe_prv_data*,int ,struct net_device*,char*,int) ;
 int xgbe_dcb_getdcbx (struct net_device*) ;

__attribute__((used)) static u8 xgbe_dcb_setdcbx(struct net_device *netdev, u8 dcbx)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 u8 support = xgbe_dcb_getdcbx(netdev);

 netif_dbg(pdata, drv, netdev, "DCBX=%#hhx\n", dcbx);

 if (dcbx & ~support)
  return 1;

 if ((dcbx & support) != support)
  return 1;

 return 0;
}
