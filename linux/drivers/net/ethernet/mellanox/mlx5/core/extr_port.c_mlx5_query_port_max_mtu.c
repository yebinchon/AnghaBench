
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_query_port_mtu (struct mlx5_core_dev*,int *,int *,int *,int ) ;

void mlx5_query_port_max_mtu(struct mlx5_core_dev *dev, u16 *max_mtu,
        u8 port)
{
 mlx5_query_port_mtu(dev, ((void*)0), max_mtu, ((void*)0), port);
}
