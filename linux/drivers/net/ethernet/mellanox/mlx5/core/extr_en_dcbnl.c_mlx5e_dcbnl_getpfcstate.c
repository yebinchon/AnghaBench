
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ieee_pfc {scalar_t__ pfc_en; } ;


 int MLX5E_CEE_STATE_DOWN ;
 int MLX5E_CEE_STATE_UP ;
 scalar_t__ mlx5e_dcbnl_ieee_getpfc (struct net_device*,struct ieee_pfc*) ;

__attribute__((used)) static u8 mlx5e_dcbnl_getpfcstate(struct net_device *netdev)
{
 struct ieee_pfc pfc;

 if (mlx5e_dcbnl_ieee_getpfc(netdev, &pfc))
  return MLX5E_CEE_STATE_DOWN;

 return pfc.pfc_en ? MLX5E_CEE_STATE_UP : MLX5E_CEE_STATE_DOWN;
}
