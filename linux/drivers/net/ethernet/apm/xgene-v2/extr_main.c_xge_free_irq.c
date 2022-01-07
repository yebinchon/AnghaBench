
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct xge_pdata {TYPE_1__ resources; } ;
struct net_device {int dummy; } ;


 int free_irq (int ,struct xge_pdata*) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xge_free_irq(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);

 free_irq(pdata->resources.irq, pdata);
}
