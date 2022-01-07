
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_table {int tx; int rx; struct mlx5dr_domain* dmn; } ;
struct TYPE_2__ {int * nic_tbl; } ;
struct mlx5dr_matcher {scalar_t__ match_criteria; TYPE_1__ tx; TYPE_1__ rx; int mask; struct mlx5dr_table* tbl; } ;
struct mlx5dr_match_parameters {int match_sz; } ;
struct mlx5dr_match_param {int dummy; } ;
struct mlx5dr_domain {int type; } ;


 scalar_t__ DR_MATCHER_CRITERIA_MAX ;
 int EINVAL ;



 int WARN_ON (int) ;
 int dr_matcher_init_fdb (struct mlx5dr_matcher*) ;
 int dr_matcher_init_nic (struct mlx5dr_matcher*,TYPE_1__*) ;
 int mlx5dr_info (struct mlx5dr_domain*,char*) ;
 int mlx5dr_ste_copy_param (scalar_t__,int *,struct mlx5dr_match_parameters*) ;

__attribute__((used)) static int dr_matcher_init(struct mlx5dr_matcher *matcher,
      struct mlx5dr_match_parameters *mask)
{
 struct mlx5dr_table *tbl = matcher->tbl;
 struct mlx5dr_domain *dmn = tbl->dmn;
 int ret;

 if (matcher->match_criteria >= DR_MATCHER_CRITERIA_MAX) {
  mlx5dr_info(dmn, "Invalid match criteria attribute\n");
  return -EINVAL;
 }

 if (mask) {
  if (mask->match_sz > sizeof(struct mlx5dr_match_param)) {
   mlx5dr_info(dmn, "Invalid match size attribute\n");
   return -EINVAL;
  }
  mlx5dr_ste_copy_param(matcher->match_criteria,
          &matcher->mask, mask);
 }

 switch (dmn->type) {
 case 129:
  matcher->rx.nic_tbl = &tbl->rx;
  ret = dr_matcher_init_nic(matcher, &matcher->rx);
  break;
 case 128:
  matcher->tx.nic_tbl = &tbl->tx;
  ret = dr_matcher_init_nic(matcher, &matcher->tx);
  break;
 case 130:
  matcher->rx.nic_tbl = &tbl->rx;
  matcher->tx.nic_tbl = &tbl->tx;
  ret = dr_matcher_init_fdb(matcher);
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 return ret;
}
