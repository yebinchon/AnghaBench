
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {int raw; } ;
typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;


 int ETH_ALEN ;
 int MLX5_ROCE_VERSION_1 ;
 int mlx5_core_roce_gid_set (struct mlx5_core_dev*,int ,int ,int ,int ,int *,int,int ,int) ;
 int mlx5_rdma_make_default_gid (struct mlx5_core_dev*,union ib_gid*) ;

__attribute__((used)) static int mlx5_rdma_add_roce_addr(struct mlx5_core_dev *dev)
{
 union ib_gid gid;
 u8 mac[ETH_ALEN];

 mlx5_rdma_make_default_gid(dev, &gid);
 return mlx5_core_roce_gid_set(dev, 0,
          MLX5_ROCE_VERSION_1,
          0, gid.raw, mac,
          0, 0, 1);
}
