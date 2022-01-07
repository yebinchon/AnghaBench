
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_desc_ops {int (* alloc_channles_and_rings ) (struct xlgmac_pdata*) ;int (* free_channels_and_rings ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {int rx_buf_size; int restart_work; struct xlgmac_desc_ops desc_ops; } ;
struct net_device {int mtu; } ;


 int INIT_WORK (int *,int ) ;
 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int stub1 (struct xlgmac_pdata*) ;
 int stub2 (struct xlgmac_pdata*) ;
 int xlgmac_calc_rx_buf_size (struct net_device*,int ) ;
 int xlgmac_init_timers (struct xlgmac_pdata*) ;
 int xlgmac_restart ;
 int xlgmac_start (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_open(struct net_device *netdev)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 struct xlgmac_desc_ops *desc_ops;
 int ret;

 desc_ops = &pdata->desc_ops;




 ret = xlgmac_calc_rx_buf_size(netdev, netdev->mtu);
 if (ret < 0)
  return ret;
 pdata->rx_buf_size = ret;


 ret = desc_ops->alloc_channles_and_rings(pdata);
 if (ret)
  return ret;

 INIT_WORK(&pdata->restart_work, xlgmac_restart);
 xlgmac_init_timers(pdata);

 ret = xlgmac_start(pdata);
 if (ret)
  goto err_channels_and_rings;

 return 0;

err_channels_and_rings:
 desc_ops->free_channels_and_rings(pdata);

 return ret;
}
