
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_vxlan {int dummy; } ;


 int IS_ERR_OR_NULL (struct mlx5_vxlan*) ;

__attribute__((used)) static inline bool mlx5_vxlan_allowed(struct mlx5_vxlan *vxlan)
{



 return !IS_ERR_OR_NULL(vxlan);
}
