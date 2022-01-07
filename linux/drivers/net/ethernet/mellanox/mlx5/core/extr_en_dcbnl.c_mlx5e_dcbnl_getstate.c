
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int MLX5E_CEE_STATE_UP ;

__attribute__((used)) static u8 mlx5e_dcbnl_getstate(struct net_device *netdev)
{
 return MLX5E_CEE_STATE_UP;
}
