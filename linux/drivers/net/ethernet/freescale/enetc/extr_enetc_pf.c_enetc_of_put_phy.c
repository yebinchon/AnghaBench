
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_ndev_priv {scalar_t__ phy_node; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int of_node_put (scalar_t__) ;
 int of_phy_deregister_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;

__attribute__((used)) static void enetc_of_put_phy(struct enetc_ndev_priv *priv)
{
 struct device_node *np = priv->dev->of_node;

 if (np && of_phy_is_fixed_link(np))
  of_phy_deregister_fixed_link(np);
 if (priv->phy_node)
  of_node_put(priv->phy_node);
}
