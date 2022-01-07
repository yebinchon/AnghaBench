
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gfar_private {int ndev; int tbi_node; int phy_node; } ;
struct device_node {int dummy; } ;


 int free_gfar_dev (struct gfar_private*) ;
 int gfar_free_rx_queues (struct gfar_private*) ;
 int gfar_free_tx_queues (struct gfar_private*) ;
 int of_node_put (int ) ;
 int of_phy_deregister_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 struct gfar_private* platform_get_drvdata (struct platform_device*) ;
 int unmap_group_regs (struct gfar_private*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int gfar_remove(struct platform_device *ofdev)
{
 struct gfar_private *priv = platform_get_drvdata(ofdev);
 struct device_node *np = ofdev->dev.of_node;

 of_node_put(priv->phy_node);
 of_node_put(priv->tbi_node);

 unregister_netdev(priv->ndev);

 if (of_phy_is_fixed_link(np))
  of_phy_deregister_fixed_link(np);

 unmap_group_regs(priv);
 gfar_free_rx_queues(priv);
 gfar_free_tx_queues(priv);
 free_gfar_dev(priv);

 return 0;
}
