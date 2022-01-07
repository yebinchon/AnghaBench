
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int rx_buf_size; } ;
struct net_device {int mtu; } ;


 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int xlgmac_calc_rx_buf_size (struct net_device*,int) ;
 int xlgmac_restart_dev (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_change_mtu(struct net_device *netdev, int mtu)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 int ret;

 ret = xlgmac_calc_rx_buf_size(netdev, mtu);
 if (ret < 0)
  return ret;

 pdata->rx_buf_size = ret;
 netdev->mtu = mtu;

 xlgmac_restart_dev(pdata);

 return 0;
}
