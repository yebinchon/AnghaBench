
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int rx_buf_size; } ;
struct net_device {int mtu; } ;


 int DBGPR (char*) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int xgbe_calc_rx_buf_size (struct net_device*,int) ;
 int xgbe_restart_dev (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_change_mtu(struct net_device *netdev, int mtu)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 int ret;

 DBGPR("-->xgbe_change_mtu\n");

 ret = xgbe_calc_rx_buf_size(netdev, mtu);
 if (ret < 0)
  return ret;

 pdata->rx_buf_size = ret;
 netdev->mtu = mtu;

 xgbe_restart_dev(pdata);

 DBGPR("<--xgbe_change_mtu\n");

 return 0;
}
