
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int source_port; } ;
struct mlx5dr_match_param {TYPE_1__ misc; } ;
struct mlx5dr_domain {int dummy; } ;


 int DR_MATCHER_CRITERIA_MISC ;
 int EINVAL ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;

int mlx5dr_ste_build_pre_check(struct mlx5dr_domain *dmn,
          u8 match_criteria,
          struct mlx5dr_match_param *mask,
          struct mlx5dr_match_param *value)
{
 if (!value && (match_criteria & DR_MATCHER_CRITERIA_MISC)) {
  if (mask->misc.source_port && mask->misc.source_port != 0xffff) {
   mlx5dr_dbg(dmn, "Partial mask source_port is not supported\n");
   return -EINVAL;
  }
 }

 return 0;
}
