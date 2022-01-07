
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int nelems; } ;
struct mlx5e_priv {int dummy; } ;


 int atomic_read (int *) ;
 struct rhashtable* get_tc_ht (struct mlx5e_priv*,unsigned long) ;

int mlx5e_tc_num_filters(struct mlx5e_priv *priv, unsigned long flags)
{
 struct rhashtable *tc_ht = get_tc_ht(priv, flags);

 return atomic_read(&tc_ht->nelems);
}
