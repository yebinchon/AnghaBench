
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ican3_dev {int num; TYPE_1__* dpm; TYPE_1__* ctrl; int irq; int napi; } ;
struct TYPE_2__ {int int_disable; } ;


 int free_candev (struct net_device*) ;
 int free_irq (int ,struct ican3_dev*) ;
 int ican3_shutdown_module (struct ican3_dev*) ;
 int iounmap (TYPE_1__*) ;
 int iowrite8 (int,int *) ;
 int napi_disable (int *) ;
 struct ican3_dev* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ican3_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct ican3_dev *mod = netdev_priv(ndev);


 unregister_netdev(ndev);
 napi_disable(&mod->napi);
 iowrite8(1 << mod->num, &mod->ctrl->int_disable);
 free_irq(mod->irq, mod);


 ican3_shutdown_module(mod);


 iounmap(mod->ctrl);
 iounmap(mod->dpm);

 free_candev(ndev);

 return 0;
}
