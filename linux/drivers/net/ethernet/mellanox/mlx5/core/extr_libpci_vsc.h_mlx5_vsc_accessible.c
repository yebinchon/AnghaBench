
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int vsc_addr; } ;



__attribute__((used)) static inline bool mlx5_vsc_accessible(struct mlx5_core_dev *dev)
{
 return !!dev->vsc_addr;
}
