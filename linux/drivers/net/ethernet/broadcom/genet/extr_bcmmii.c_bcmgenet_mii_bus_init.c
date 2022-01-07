
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct bcmgenet_priv {TYPE_2__* pdev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int bcmgenet_mii_of_init (struct bcmgenet_priv*) ;
 int bcmgenet_mii_pd_init (struct bcmgenet_priv*) ;

__attribute__((used)) static int bcmgenet_mii_bus_init(struct bcmgenet_priv *priv)
{
 struct device_node *dn = priv->pdev->dev.of_node;

 if (dn)
  return bcmgenet_mii_of_init(priv);
 else
  return bcmgenet_mii_pd_init(priv);
}
