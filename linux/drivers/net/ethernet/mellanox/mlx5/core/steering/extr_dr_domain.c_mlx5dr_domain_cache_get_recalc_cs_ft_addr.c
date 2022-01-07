
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct mlx5dr_fw_recalc_cs_ft {int rx_icm_addr; } ;
struct TYPE_2__ {struct mlx5dr_fw_recalc_cs_ft** recalc_cs_ft; } ;
struct mlx5dr_domain {TYPE_1__ cache; } ;


 int EINVAL ;
 struct mlx5dr_fw_recalc_cs_ft* mlx5dr_fw_create_recalc_cs_ft (struct mlx5dr_domain*,size_t) ;

int mlx5dr_domain_cache_get_recalc_cs_ft_addr(struct mlx5dr_domain *dmn,
           u32 vport_num,
           u64 *rx_icm_addr)
{
 struct mlx5dr_fw_recalc_cs_ft *recalc_cs_ft;

 recalc_cs_ft = dmn->cache.recalc_cs_ft[vport_num];
 if (!recalc_cs_ft) {

  recalc_cs_ft = mlx5dr_fw_create_recalc_cs_ft(dmn, vport_num);
  if (!recalc_cs_ft)
   return -EINVAL;

  dmn->cache.recalc_cs_ft[vport_num] = recalc_cs_ft;
 }

 *rx_icm_addr = recalc_cs_ft->rx_icm_addr;

 return 0;
}
