
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {int irq_enabled; scalar_t__ is_opened; TYPE_1__* pdev; int napi; } ;
struct net_device {int irq; scalar_t__ phydev; } ;
struct TYPE_2__ {int dev; } ;


 int EESIPR ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 int phy_stop (scalar_t__) ;
 int pm_runtime_put_sync (int *) ;
 int sh_eth_dev_exit (struct net_device*) ;
 int sh_eth_ring_free (struct net_device*) ;
 int sh_eth_write (struct net_device*,int,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int sh_eth_close(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 netif_stop_queue(ndev);





 mdp->irq_enabled = 0;
 synchronize_irq(ndev->irq);
 napi_disable(&mdp->napi);
 sh_eth_write(ndev, 0x0000, EESIPR);

 sh_eth_dev_exit(ndev);


 if (ndev->phydev) {
  phy_stop(ndev->phydev);
  phy_disconnect(ndev->phydev);
 }

 free_irq(ndev->irq, ndev);


 sh_eth_ring_free(ndev);

 pm_runtime_put_sync(&mdp->pdev->dev);

 mdp->is_opened = 0;

 return 0;
}
