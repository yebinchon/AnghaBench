
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_eth_private {int is_opened; TYPE_2__* pdev; int napi; TYPE_1__* cd; } ;
struct net_device {int irq; int name; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int irq_flags; } ;


 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int sh_eth_dev_init (struct net_device*) ;
 int sh_eth_interrupt ;
 int sh_eth_phy_start (struct net_device*) ;
 int sh_eth_ring_init (struct net_device*) ;

__attribute__((used)) static int sh_eth_open(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int ret;

 pm_runtime_get_sync(&mdp->pdev->dev);

 napi_enable(&mdp->napi);

 ret = request_irq(ndev->irq, sh_eth_interrupt,
     mdp->cd->irq_flags, ndev->name, ndev);
 if (ret) {
  netdev_err(ndev, "Can not assign IRQ number\n");
  goto out_napi_off;
 }


 ret = sh_eth_ring_init(ndev);
 if (ret)
  goto out_free_irq;


 ret = sh_eth_dev_init(ndev);
 if (ret)
  goto out_free_irq;


 ret = sh_eth_phy_start(ndev);
 if (ret)
  goto out_free_irq;

 netif_start_queue(ndev);

 mdp->is_opened = 1;

 return ret;

out_free_irq:
 free_irq(ndev->irq, ndev);
out_napi_off:
 napi_disable(&mdp->napi);
 pm_runtime_put_sync(&mdp->pdev->dev);
 return ret;
}
