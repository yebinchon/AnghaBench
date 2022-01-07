
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_esw_caps {int uplink_icm_address_tx; int uplink_icm_address_rx; } ;
struct TYPE_3__ {int num_esw_ports; int gvmi; struct mlx5dr_cmd_vport_cap* vports_caps; struct mlx5dr_esw_caps esw_caps; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;
struct mlx5dr_domain {TYPE_2__ info; } ;
struct mlx5dr_cmd_vport_cap {int vhca_gvmi; scalar_t__ vport_gvmi; int icm_address_tx; int icm_address_rx; int num; } ;


 int WIRE_PORT ;
 int dr_domain_query_vport (struct mlx5dr_domain*,int,int) ;

__attribute__((used)) static int dr_domain_query_vports(struct mlx5dr_domain *dmn)
{
 struct mlx5dr_esw_caps *esw_caps = &dmn->info.caps.esw_caps;
 struct mlx5dr_cmd_vport_cap *wire_vport;
 int vport;
 int ret;


 for (vport = 0; vport < dmn->info.caps.num_esw_ports - 1; vport++) {
  ret = dr_domain_query_vport(dmn, !!vport, vport);
  if (ret)
   return ret;
 }


 wire_vport = &dmn->info.caps.vports_caps[vport];
 wire_vport->num = WIRE_PORT;
 wire_vport->icm_address_rx = esw_caps->uplink_icm_address_rx;
 wire_vport->icm_address_tx = esw_caps->uplink_icm_address_tx;
 wire_vport->vport_gvmi = 0;
 wire_vport->vhca_gvmi = dmn->info.caps.gvmi;

 return 0;
}
