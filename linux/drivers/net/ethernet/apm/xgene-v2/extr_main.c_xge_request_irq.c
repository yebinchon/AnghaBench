
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct xge_pdata {int irq_name; TYPE_1__ resources; } ;
struct net_device {char* name; } ;


 int IRQ_ID_SIZE ;
 int netdev_err (struct net_device*,char*,int ) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct xge_pdata*) ;
 int snprintf (int ,int ,char*,char*) ;
 int xge_irq ;

__attribute__((used)) static int xge_request_irq(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 int ret;

 snprintf(pdata->irq_name, IRQ_ID_SIZE, "%s", ndev->name);

 ret = request_irq(pdata->resources.irq, xge_irq, 0, pdata->irq_name,
     pdata);
 if (ret)
  netdev_err(ndev, "Failed to request irq %s\n", pdata->irq_name);

 return ret;
}
