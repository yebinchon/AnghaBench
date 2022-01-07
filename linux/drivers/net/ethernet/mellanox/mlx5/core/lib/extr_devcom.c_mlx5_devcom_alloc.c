
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_devcom_list {int dummy; } ;
struct mlx5_devcom {int idx; struct mlx5_devcom_list* priv; } ;


 int GFP_KERNEL ;
 struct mlx5_devcom* kzalloc (int,int ) ;

__attribute__((used)) static struct mlx5_devcom *mlx5_devcom_alloc(struct mlx5_devcom_list *priv,
          u8 idx)
{
 struct mlx5_devcom *devcom;

 devcom = kzalloc(sizeof(*devcom), GFP_KERNEL);
 if (!devcom)
  return ((void*)0);

 devcom->priv = priv;
 devcom->idx = idx;
 return devcom;
}
