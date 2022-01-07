
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * recalc_cs_ft; } ;
struct TYPE_4__ {int num_vports; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;
struct mlx5dr_domain {TYPE_3__ cache; TYPE_2__ info; } ;


 int kfree (int *) ;
 int mlx5dr_fw_destroy_recalc_cs_ft (struct mlx5dr_domain*,int ) ;

__attribute__((used)) static void dr_domain_uninit_cache(struct mlx5dr_domain *dmn)
{
 int i;

 for (i = 0; i < dmn->info.caps.num_vports; i++) {
  if (!dmn->cache.recalc_cs_ft[i])
   continue;

  mlx5dr_fw_destroy_recalc_cs_ft(dmn, dmn->cache.recalc_cs_ft[i]);
 }

 kfree(dmn->cache.recalc_cs_ft);
}
