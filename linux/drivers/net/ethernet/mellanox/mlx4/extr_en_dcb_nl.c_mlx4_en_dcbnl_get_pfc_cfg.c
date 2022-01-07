
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * dcb_pfc; } ;
struct mlx4_en_priv {TYPE_1__ cee_config; } ;


 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx4_en_dcbnl_get_pfc_cfg(struct net_device *netdev, int priority,
          u8 *setting)
{
 struct mlx4_en_priv *priv = netdev_priv(netdev);

 *setting = priv->cee_config.dcb_pfc[priority];
}
