
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_hw_ops {int (* config_rx_mode ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {struct xlgmac_hw_ops hw_ops; } ;
struct net_device {int dummy; } ;


 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int stub1 (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_set_rx_mode(struct net_device *netdev)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 struct xlgmac_hw_ops *hw_ops = &pdata->hw_ops;

 hw_ops->config_rx_mode(pdata);
}
