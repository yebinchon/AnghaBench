
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_l2_hash_node {int hlist; } ;


 int hlist_del (int *) ;
 int kfree (struct mlx5e_l2_hash_node*) ;

__attribute__((used)) static void mlx5e_del_l2_from_hash(struct mlx5e_l2_hash_node *hn)
{
 hlist_del(&hn->hlist);
 kfree(hn);
}
