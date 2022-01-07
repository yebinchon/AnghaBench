
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int irq; } ;
struct mvneta_port {int id; scalar_t__ bm_priv; int pool_short; int pool_long; int phylink; int stats; int ports; int clk; int clk_bus; } ;


 int clk_disable_unprepare (int ) ;
 int free_percpu (int ) ;
 int irq_dispose_mapping (int ) ;
 int mvneta_bm_pool_destroy (scalar_t__,int ,int) ;
 int mvneta_bm_put (scalar_t__) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_destroy (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int mvneta_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct mvneta_port *pp = netdev_priv(dev);

 unregister_netdev(dev);
 clk_disable_unprepare(pp->clk_bus);
 clk_disable_unprepare(pp->clk);
 free_percpu(pp->ports);
 free_percpu(pp->stats);
 irq_dispose_mapping(dev->irq);
 phylink_destroy(pp->phylink);

 if (pp->bm_priv) {
  mvneta_bm_pool_destroy(pp->bm_priv, pp->pool_long, 1 << pp->id);
  mvneta_bm_pool_destroy(pp->bm_priv, pp->pool_short,
           1 << pp->id);
  mvneta_bm_put(pp->bm_priv);
 }

 return 0;
}
