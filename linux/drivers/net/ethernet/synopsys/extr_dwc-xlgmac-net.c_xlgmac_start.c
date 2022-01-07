
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_hw_ops {int (* exit ) (struct xlgmac_pdata*) ;int (* enable_rx ) (struct xlgmac_pdata*) ;int (* enable_tx ) (struct xlgmac_pdata*) ;int (* init ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {struct net_device* netdev; struct xlgmac_hw_ops hw_ops; } ;
struct net_device {int dummy; } ;


 int netif_tx_start_all_queues (struct net_device*) ;
 int stub1 (struct xlgmac_pdata*) ;
 int stub2 (struct xlgmac_pdata*) ;
 int stub3 (struct xlgmac_pdata*) ;
 int stub4 (struct xlgmac_pdata*) ;
 int xlgmac_napi_disable (struct xlgmac_pdata*,int) ;
 int xlgmac_napi_enable (struct xlgmac_pdata*,int) ;
 int xlgmac_request_irqs (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_start(struct xlgmac_pdata *pdata)
{
 struct xlgmac_hw_ops *hw_ops = &pdata->hw_ops;
 struct net_device *netdev = pdata->netdev;
 int ret;

 hw_ops->init(pdata);
 xlgmac_napi_enable(pdata, 1);

 ret = xlgmac_request_irqs(pdata);
 if (ret)
  goto err_napi;

 hw_ops->enable_tx(pdata);
 hw_ops->enable_rx(pdata);
 netif_tx_start_all_queues(netdev);

 return 0;

err_napi:
 xlgmac_napi_disable(pdata, 1);
 hw_ops->exit(pdata);

 return ret;
}
