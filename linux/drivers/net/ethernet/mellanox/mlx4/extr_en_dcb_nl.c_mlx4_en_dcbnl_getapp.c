
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int dcbx_cap; } ;
struct dcb_app {int protocol; int selector; } ;


 int DCB_CAP_DCBX_VER_CEE ;
 int dcb_getapp (struct net_device*,struct dcb_app*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_dcbnl_getapp(struct net_device *netdev, u8 idtype, u16 id)
{
 struct mlx4_en_priv *priv = netdev_priv(netdev);
 struct dcb_app app = {
    .selector = idtype,
    .protocol = id,
        };
 if (!(priv->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
  return 0;

 return dcb_getapp(netdev, &app);
}
