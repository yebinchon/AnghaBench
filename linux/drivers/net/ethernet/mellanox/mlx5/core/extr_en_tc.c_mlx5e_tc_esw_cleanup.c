
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;


 int _mlx5e_tc_del_flow ;
 int rhashtable_free_and_destroy (struct rhashtable*,int ,int *) ;

void mlx5e_tc_esw_cleanup(struct rhashtable *tc_ht)
{
 rhashtable_free_and_destroy(tc_ht, _mlx5e_tc_del_flow, ((void*)0));
}
