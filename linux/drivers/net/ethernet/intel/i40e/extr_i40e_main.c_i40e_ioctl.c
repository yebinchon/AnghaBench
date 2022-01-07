
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct i40e_pf {int dummy; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;


 int EOPNOTSUPP ;


 int i40e_ptp_get_ts_config (struct i40e_pf*,struct ifreq*) ;
 int i40e_ptp_set_ts_config (struct i40e_pf*,struct ifreq*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

int i40e_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;

 switch (cmd) {
 case 129:
  return i40e_ptp_get_ts_config(pf, ifr);
 case 128:
  return i40e_ptp_set_ts_config(pf, ifr);
 default:
  return -EOPNOTSUPP;
 }
}
