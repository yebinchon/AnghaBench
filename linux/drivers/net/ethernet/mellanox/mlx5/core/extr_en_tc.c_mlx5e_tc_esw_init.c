
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;


 int rhashtable_init (struct rhashtable*,int *) ;
 int tc_ht_params ;

int mlx5e_tc_esw_init(struct rhashtable *tc_ht)
{
 return rhashtable_init(tc_ht, &tc_ht_params);
}
