
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_vxlan {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int EOPNOTSUPP ;
 struct mlx5_vxlan* ERR_PTR (int ) ;

__attribute__((used)) static inline struct mlx5_vxlan*
mlx5_vxlan_create(struct mlx5_core_dev *mdev) { return ERR_PTR(-EOPNOTSUPP); }
