
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_desc_ops {int (* free_channels_and_rings ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {struct xlgmac_desc_ops desc_ops; } ;
struct net_device {int dummy; } ;


 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int stub1 (struct xlgmac_pdata*) ;
 int xlgmac_stop (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_close(struct net_device *netdev)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 struct xlgmac_desc_ops *desc_ops;

 desc_ops = &pdata->desc_ops;


 xlgmac_stop(pdata);


 desc_ops->free_channels_and_rings(pdata);

 return 0;
}
