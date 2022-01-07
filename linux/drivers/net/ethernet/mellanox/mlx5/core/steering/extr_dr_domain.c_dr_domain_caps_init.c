
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int esw_tx_drop_address; int esw_rx_drop_address; int fdb_sw_owner; int eswitch_manager; int nic_tx_drop_address; int nic_tx_allow_address; int tx_sw_owner; int nic_rx_drop_address; int rx_sw_owner; int num_esw_ports; } ;
struct TYPE_7__ {int drop_icm_addr; int default_icm_addr; void* ste_type; } ;
struct TYPE_6__ {int drop_icm_addr; int default_icm_addr; void* ste_type; } ;
struct TYPE_8__ {int supp_sw_steering; TYPE_4__ caps; TYPE_2__ tx; TYPE_1__ rx; } ;
struct mlx5dr_domain {int type; TYPE_3__ info; } ;
struct mlx5dr_cmd_vport_cap {int icm_address_rx; int icm_address_tx; } ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOTSUPP ;
 int EOPNOTSUPP ;



 void* MLX5DR_STE_TYPE_RX ;
 void* MLX5DR_STE_TYPE_TX ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ;
 int dr_domain_query_fdb_caps (struct mlx5_core_dev*,struct mlx5dr_domain*) ;
 int mlx5_eswitch_get_total_vports (struct mlx5_core_dev*) ;
 int mlx5dr_cmd_query_device (struct mlx5_core_dev*,TYPE_4__*) ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;
 struct mlx5dr_cmd_vport_cap* mlx5dr_get_vport_cap (TYPE_4__*,int ) ;
 int port_type ;

__attribute__((used)) static int dr_domain_caps_init(struct mlx5_core_dev *mdev,
          struct mlx5dr_domain *dmn)
{
 struct mlx5dr_cmd_vport_cap *vport_cap;
 int ret;

 if (MLX5_CAP_GEN(mdev, port_type) != MLX5_CAP_PORT_TYPE_ETH) {
  mlx5dr_dbg(dmn, "Failed to allocate domain, bad link type\n");
  return -EOPNOTSUPP;
 }

 dmn->info.caps.num_esw_ports = mlx5_eswitch_get_total_vports(mdev);

 ret = mlx5dr_cmd_query_device(mdev, &dmn->info.caps);
 if (ret)
  return ret;

 ret = dr_domain_query_fdb_caps(mdev, dmn);
 if (ret)
  return ret;

 switch (dmn->type) {
 case 129:
  if (!dmn->info.caps.rx_sw_owner)
   return -ENOTSUPP;

  dmn->info.supp_sw_steering = 1;
  dmn->info.rx.ste_type = MLX5DR_STE_TYPE_RX;
  dmn->info.rx.default_icm_addr = dmn->info.caps.nic_rx_drop_address;
  dmn->info.rx.drop_icm_addr = dmn->info.caps.nic_rx_drop_address;
  break;
 case 128:
  if (!dmn->info.caps.tx_sw_owner)
   return -ENOTSUPP;

  dmn->info.supp_sw_steering = 1;
  dmn->info.tx.ste_type = MLX5DR_STE_TYPE_TX;
  dmn->info.tx.default_icm_addr = dmn->info.caps.nic_tx_allow_address;
  dmn->info.tx.drop_icm_addr = dmn->info.caps.nic_tx_drop_address;
  break;
 case 130:
  if (!dmn->info.caps.eswitch_manager)
   return -ENOTSUPP;

  if (!dmn->info.caps.fdb_sw_owner)
   return -ENOTSUPP;

  dmn->info.rx.ste_type = MLX5DR_STE_TYPE_RX;
  dmn->info.tx.ste_type = MLX5DR_STE_TYPE_TX;
  vport_cap = mlx5dr_get_vport_cap(&dmn->info.caps, 0);
  if (!vport_cap) {
   mlx5dr_dbg(dmn, "Failed to get esw manager vport\n");
   return -ENOENT;
  }

  dmn->info.supp_sw_steering = 1;
  dmn->info.tx.default_icm_addr = vport_cap->icm_address_tx;
  dmn->info.rx.default_icm_addr = vport_cap->icm_address_rx;
  dmn->info.rx.drop_icm_addr = dmn->info.caps.esw_rx_drop_address;
  dmn->info.tx.drop_icm_addr = dmn->info.caps.esw_tx_drop_address;
  break;
 default:
  mlx5dr_dbg(dmn, "Invalid domain\n");
  ret = -EINVAL;
  break;
 }

 return ret;
}
