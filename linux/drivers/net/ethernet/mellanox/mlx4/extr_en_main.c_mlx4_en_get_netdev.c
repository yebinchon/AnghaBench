
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlx4_en_dev {void** pndev; } ;
struct mlx4_dev {int dummy; } ;



__attribute__((used)) static void *mlx4_en_get_netdev(struct mlx4_dev *dev, void *ctx, u8 port)
{
 struct mlx4_en_dev *endev = ctx;

 return endev->pndev[port];
}
