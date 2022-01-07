
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int proto; } ;


 int MLX5E_NUM_TUNNEL_TT ;
 scalar_t__ mlx5e_tunnel_proto_supported (struct mlx5_core_dev*,int ) ;
 TYPE_1__* ttc_tunnel_rules ;

bool mlx5e_any_tunnel_proto_supported(struct mlx5_core_dev *mdev)
{
 int tt;

 for (tt = 0; tt < MLX5E_NUM_TUNNEL_TT; tt++) {
  if (mlx5e_tunnel_proto_supported(mdev, ttc_tunnel_rules[tt].proto))
   return 1;
 }
 return 0;
}
