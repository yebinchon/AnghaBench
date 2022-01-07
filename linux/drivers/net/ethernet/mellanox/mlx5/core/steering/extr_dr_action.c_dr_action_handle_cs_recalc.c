
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct mlx5dr_domain {int dummy; } ;
struct TYPE_7__ {TYPE_4__* caps; int dmn; } ;
struct TYPE_5__ {int rx_icm_addr; } ;
struct TYPE_6__ {TYPE_1__ fw_tbl; int is_fw_tbl; } ;
struct mlx5dr_action {int action_type; TYPE_3__ vport; TYPE_2__ dest_tbl; } ;
struct TYPE_8__ {int num; } ;




 int EINVAL ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;
 int mlx5dr_domain_cache_get_recalc_cs_ft_addr (int ,int ,int *) ;
 int mlx5dr_err (struct mlx5dr_domain*,char*) ;

__attribute__((used)) static int dr_action_handle_cs_recalc(struct mlx5dr_domain *dmn,
          struct mlx5dr_action *dest_action,
          u64 *final_icm_addr)
{
 int ret;

 switch (dest_action->action_type) {
 case 129:




  if (dest_action->dest_tbl.is_fw_tbl) {
   *final_icm_addr = dest_action->dest_tbl.fw_tbl.rx_icm_addr;
  } else {
   mlx5dr_dbg(dmn,
       "Destination FT should be terminating when modify TTL is used\n");
   return -EINVAL;
  }
  break;

 case 128:



  ret = mlx5dr_domain_cache_get_recalc_cs_ft_addr(dest_action->vport.dmn,
        dest_action->vport.caps->num,
        final_icm_addr);
  if (ret) {
   mlx5dr_err(dmn, "Failed to get FW cs recalc flow table\n");
   return ret;
  }
  break;

 default:
  break;
 }

 return 0;
}
