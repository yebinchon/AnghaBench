
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sxgbe_priv_data {int ioaddr; TYPE_2__* hw; scalar_t__ eee_enabled; struct net_device* dev; } ;
struct net_device {TYPE_3__* phydev; } ;
struct TYPE_6__ {int link; } ;
struct TYPE_5__ {TYPE_1__* mac; } ;
struct TYPE_4__ {int (* set_eee_pls ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void sxgbe_eee_adjust(const struct sxgbe_priv_data *priv)
{
 struct net_device *ndev = priv->dev;





 if (priv->eee_enabled)
  priv->hw->mac->set_eee_pls(priv->ioaddr, ndev->phydev->link);
}
