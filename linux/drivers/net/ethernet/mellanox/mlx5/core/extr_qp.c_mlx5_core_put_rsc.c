
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_rsc_common {int free; int refcount; } ;


 int complete (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void mlx5_core_put_rsc(struct mlx5_core_rsc_common *common)
{
 if (refcount_dec_and_test(&common->refcount))
  complete(&common->free);
}
