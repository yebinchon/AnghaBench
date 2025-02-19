
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int dcbx_cap; } ;
struct dcb_app {void* priority; int protocol; void* selector; } ;


 int DCB_CAP_DCBX_VER_CEE ;
 int EINVAL ;
 int dcb_setapp (struct net_device*,struct dcb_app*) ;
 int memset (struct dcb_app*,int ,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_dcbnl_setapp(struct net_device *netdev, u8 idtype,
    u16 id, u8 up)
{
 struct mlx4_en_priv *priv = netdev_priv(netdev);
 struct dcb_app app;

 if (!(priv->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
  return -EINVAL;

 memset(&app, 0, sizeof(struct dcb_app));
 app.selector = idtype;
 app.protocol = id;
 app.priority = up;

 return dcb_setapp(netdev, &app);
}
