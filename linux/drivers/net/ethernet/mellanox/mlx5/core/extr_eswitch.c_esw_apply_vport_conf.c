
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int qos; int vlan; int node_guid; int mac; int link_state; } ;
struct mlx5_vport {scalar_t__ vport; TYPE_1__ info; } ;
struct mlx5_eswitch {scalar_t__ manager_vport; scalar_t__ mode; int dev; } ;


 scalar_t__ MLX5_ESWITCH_LEGACY ;
 int MLX5_VPORT_STATE_OP_MOD_ESW_VPORT ;
 int SET_VLAN_INSERT ;
 int SET_VLAN_STRIP ;
 int esw_vport_egress_config (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_vport_ingress_config (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int mlx5_modify_nic_vport_mac_address (int ,scalar_t__,int ) ;
 int mlx5_modify_nic_vport_node_guid (int ,scalar_t__,int ) ;
 int mlx5_modify_vport_admin_state (int ,int ,scalar_t__,int,int ) ;
 int modify_esw_vport_cvlan (int ,scalar_t__,int ,int ,int) ;

__attribute__((used)) static void esw_apply_vport_conf(struct mlx5_eswitch *esw,
     struct mlx5_vport *vport)
{
 u16 vport_num = vport->vport;
 int flags;

 if (esw->manager_vport == vport_num)
  return;

 mlx5_modify_vport_admin_state(esw->dev,
          MLX5_VPORT_STATE_OP_MOD_ESW_VPORT,
          vport_num, 1,
          vport->info.link_state);


 if (vport_num) {
  mlx5_modify_nic_vport_mac_address(esw->dev, vport_num,
        vport->info.mac);
  mlx5_modify_nic_vport_node_guid(esw->dev, vport_num,
      vport->info.node_guid);
 }

 flags = (vport->info.vlan || vport->info.qos) ?
  SET_VLAN_STRIP | SET_VLAN_INSERT : 0;
 modify_esw_vport_cvlan(esw->dev, vport_num, vport->info.vlan, vport->info.qos,
          flags);


 if (esw->mode == MLX5_ESWITCH_LEGACY) {
  esw_vport_ingress_config(esw, vport);
  esw_vport_egress_config(esw, vport);
 }
}
