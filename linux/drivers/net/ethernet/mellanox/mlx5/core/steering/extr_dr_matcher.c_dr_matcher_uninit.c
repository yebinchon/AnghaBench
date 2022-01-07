
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_matcher {int tx; int rx; TYPE_1__* tbl; } ;
struct mlx5dr_domain {int type; } ;
struct TYPE_2__ {struct mlx5dr_domain* dmn; } ;





 int WARN_ON (int) ;
 int dr_matcher_uninit_fdb (struct mlx5dr_matcher*) ;
 int dr_matcher_uninit_nic (int *) ;

__attribute__((used)) static void dr_matcher_uninit(struct mlx5dr_matcher *matcher)
{
 struct mlx5dr_domain *dmn = matcher->tbl->dmn;

 switch (dmn->type) {
 case 129:
  dr_matcher_uninit_nic(&matcher->rx);
  break;
 case 128:
  dr_matcher_uninit_nic(&matcher->tx);
  break;
 case 130:
  dr_matcher_uninit_fdb(matcher);
  break;
 default:
  WARN_ON(1);
  break;
 }
}
