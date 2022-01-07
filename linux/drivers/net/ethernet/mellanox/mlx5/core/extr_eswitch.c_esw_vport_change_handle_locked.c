
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_vport {int enabled_events; int vport; scalar_t__ enabled; int allmulti_rule; struct mlx5_core_dev* dev; } ;
struct mlx5_eswitch {int dev; } ;
struct TYPE_2__ {struct mlx5_eswitch* eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ETH_ALEN ;
 int IS_ERR_OR_NULL (int ) ;
 int MLX5_NVPRT_LIST_TYPE_MC ;
 int MLX5_NVPRT_LIST_TYPE_UC ;
 int MLX5_VPORT_MC_ADDR_CHANGE ;
 int MLX5_VPORT_PROMISC_CHANGE ;
 int MLX5_VPORT_UC_ADDR_CHANGE ;
 int arm_vport_context_events_cmd (struct mlx5_core_dev*,int ,int) ;
 int esw_apply_vport_addr_list (struct mlx5_eswitch*,struct mlx5_vport*,int ) ;
 int esw_debug (struct mlx5_core_dev*,char*,int ,...) ;
 int esw_update_vport_addr_list (struct mlx5_eswitch*,struct mlx5_vport*,int ) ;
 int esw_update_vport_mc_promisc (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_update_vport_rx_mode (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int mlx5_query_nic_vport_mac_address (struct mlx5_core_dev*,int ,int,int *) ;

__attribute__((used)) static void esw_vport_change_handle_locked(struct mlx5_vport *vport)
{
 struct mlx5_core_dev *dev = vport->dev;
 struct mlx5_eswitch *esw = dev->priv.eswitch;
 u8 mac[ETH_ALEN];

 mlx5_query_nic_vport_mac_address(dev, vport->vport, 1, mac);
 esw_debug(dev, "vport[%d] Context Changed: perm mac: %pM\n",
    vport->vport, mac);

 if (vport->enabled_events & MLX5_VPORT_UC_ADDR_CHANGE) {
  esw_update_vport_addr_list(esw, vport, MLX5_NVPRT_LIST_TYPE_UC);
  esw_apply_vport_addr_list(esw, vport, MLX5_NVPRT_LIST_TYPE_UC);
 }

 if (vport->enabled_events & MLX5_VPORT_MC_ADDR_CHANGE)
  esw_update_vport_addr_list(esw, vport, MLX5_NVPRT_LIST_TYPE_MC);

 if (vport->enabled_events & MLX5_VPORT_PROMISC_CHANGE) {
  esw_update_vport_rx_mode(esw, vport);
  if (!IS_ERR_OR_NULL(vport->allmulti_rule))
   esw_update_vport_mc_promisc(esw, vport);
 }

 if (vport->enabled_events & (MLX5_VPORT_PROMISC_CHANGE | MLX5_VPORT_MC_ADDR_CHANGE))
  esw_apply_vport_addr_list(esw, vport, MLX5_NVPRT_LIST_TYPE_MC);

 esw_debug(esw->dev, "vport[%d] Context Changed: Done\n", vport->vport);
 if (vport->enabled)
  arm_vport_context_events_cmd(dev, vport->vport,
          vport->enabled_events);
}
