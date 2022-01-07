
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int EOPNOTSUPP ;
 int const* ERR_PTR (int ) ;

__attribute__((used)) static inline const u32 *mlx5_esw_query_functions(struct mlx5_core_dev *dev)
{
 return ERR_PTR(-EOPNOTSUPP);
}
