
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_flow_table {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int __mlx5e_create_vlan_table_groups (struct mlx5e_flow_table*,int *,int) ;
 int create_flow_group_in ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;

__attribute__((used)) static int mlx5e_create_vlan_table_groups(struct mlx5e_flow_table *ft)
{
 u32 *in;
 int inlen = MLX5_ST_SZ_BYTES(create_flow_group_in);
 int err;

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 err = __mlx5e_create_vlan_table_groups(ft, in, inlen);

 kvfree(in);
 return err;
}
