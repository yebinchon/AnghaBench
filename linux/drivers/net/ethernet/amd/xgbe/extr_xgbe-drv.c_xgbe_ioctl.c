
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;


 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int xgbe_get_hwtstamp_settings (struct xgbe_prv_data*,struct ifreq*) ;
 int xgbe_set_hwtstamp_settings (struct xgbe_prv_data*,struct ifreq*) ;

__attribute__((used)) static int xgbe_ioctl(struct net_device *netdev, struct ifreq *ifreq, int cmd)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 int ret;

 switch (cmd) {
 case 129:
  ret = xgbe_get_hwtstamp_settings(pdata, ifreq);
  break;

 case 128:
  ret = xgbe_set_hwtstamp_settings(pdata, ifreq);
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 return ret;
}
