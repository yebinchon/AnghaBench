
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_4__ {int gvmi; struct mlx5dr_cmd_vport_cap* vports_caps; } ;
struct TYPE_3__ {TYPE_2__ caps; } ;
struct mlx5dr_domain {TYPE_1__ info; int mdev; } ;
struct mlx5dr_cmd_vport_cap {size_t num; int vhca_gvmi; int vport_gvmi; int icm_address_tx; int icm_address_rx; } ;


 int mlx5dr_cmd_query_esw_vport_context (int ,int,size_t,int *,int *) ;
 int mlx5dr_cmd_query_gvmi (int ,int,size_t,int *) ;

__attribute__((used)) static int dr_domain_query_vport(struct mlx5dr_domain *dmn,
     bool other_vport,
     u16 vport_number)
{
 struct mlx5dr_cmd_vport_cap *vport_caps;
 int ret;

 vport_caps = &dmn->info.caps.vports_caps[vport_number];

 ret = mlx5dr_cmd_query_esw_vport_context(dmn->mdev,
       other_vport,
       vport_number,
       &vport_caps->icm_address_rx,
       &vport_caps->icm_address_tx);
 if (ret)
  return ret;

 ret = mlx5dr_cmd_query_gvmi(dmn->mdev,
        other_vport,
        vport_number,
        &vport_caps->vport_gvmi);
 if (ret)
  return ret;

 vport_caps->num = vport_number;
 vport_caps->vhca_gvmi = dmn->info.caps.gvmi;

 return 0;
}
