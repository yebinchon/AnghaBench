
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_16__ {scalar_t__ vlan_proto; } ;
struct mlx4_vport_oper_state {TYPE_8__ state; } ;
struct mlx4_vhcr {int op_modifier; int in_modifier; } ;
struct mlx4_slave_state {int vst_qinq_supported; } ;
struct TYPE_10__ {TYPE_1__* res_alloc; } ;
struct TYPE_13__ {TYPE_2__ res_tracker; struct mlx4_slave_state* slave_state; TYPE_4__* vf_oper; } ;
struct TYPE_14__ {TYPE_5__ master; } ;
struct mlx4_priv {TYPE_6__ mfunc; } ;
struct mlx4_func {int max_eq; int rsvd_eqs; } ;
struct TYPE_15__ {int* phys_port_id; int function_caps; int num_qps; int num_srqs; int num_cqs; int flags2; int num_eqs; int reserved_eqs; int num_mpts; int num_mtts; int num_mgms; int num_amgms; int reserved_lkey; int num_ports; scalar_t__* phv_bit; } ;
struct TYPE_11__ {int base_proxy_sqpn; int base_tunnel_sqpn; } ;
struct mlx4_dev {TYPE_7__ caps; TYPE_3__ phys_caps; } ;
struct mlx4_cmd_mailbox {int buf; } ;
struct mlx4_cmd_info {int dummy; } ;
struct mlx4_active_ports {int ports; } ;
struct TYPE_12__ {struct mlx4_vport_oper_state* vport; } ;
struct TYPE_9__ {int* quota; } ;


 int EINVAL ;
 int ETH_P_8021AD ;
 int MLX4_DEV_CAP_FLAG2_SYS_EQS ;
 int MLX4_PUT (int ,int,int ) ;
 int QUERY_FUNC_CAP_CQ_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_CQ_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_EXTRA_FLAGS_A0_QP_ALLOC_FLAG ;
 int QUERY_FUNC_CAP_EXTRA_FLAGS_BF_QP_ALLOC_FLAG ;
 int QUERY_FUNC_CAP_EXTRA_FLAGS_OFFSET ;
 int QUERY_FUNC_CAP_FLAGS0_OFFSET ;
 size_t QUERY_FUNC_CAP_FLAGS1_NIC_INFO ;
 int QUERY_FUNC_CAP_FLAGS1_OFFSET ;
 int QUERY_FUNC_CAP_FLAGS_OFFSET ;
 size_t QUERY_FUNC_CAP_FLAG_ETH ;
 size_t QUERY_FUNC_CAP_FLAG_QUOTAS ;
 size_t QUERY_FUNC_CAP_FLAG_RDMA ;
 size_t QUERY_FUNC_CAP_FLAG_RESD_LKEY ;
 size_t QUERY_FUNC_CAP_FLAG_VALID_MAILBOX ;
 int QUERY_FUNC_CAP_FMR_OFFSET ;
 int QUERY_FUNC_CAP_MAX_EQ_OFFSET ;
 int QUERY_FUNC_CAP_MCG_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_MCG_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_MPT_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_MPT_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_MTT_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_MTT_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_NUM_PORTS_OFFSET ;
 int QUERY_FUNC_CAP_PF_BHVR_OFFSET ;
 size_t QUERY_FUNC_CAP_PHV_BIT ;
 int QUERY_FUNC_CAP_PHYS_PORT_ID ;
 int QUERY_FUNC_CAP_PHYS_PORT_OFFSET ;
 int QUERY_FUNC_CAP_PRIV_VF_QKEY_OFFSET ;
 int QUERY_FUNC_CAP_QP0_PROXY ;
 int QUERY_FUNC_CAP_QP0_TUNNEL ;
 int QUERY_FUNC_CAP_QP1_PROXY ;
 int QUERY_FUNC_CAP_QP1_TUNNEL ;
 int QUERY_FUNC_CAP_QP_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_QP_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_QP_RESD_LKEY_OFFSET ;
 int QUERY_FUNC_CAP_RESERVED_EQ_OFFSET ;
 int QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET_DEP ;
 int QUERY_FUNC_CAP_SUPPORTS_NON_POWER_OF_2_NUM_EQS ;
 int QUERY_FUNC_CAP_SUPPORTS_VST_QINQ ;
 size_t QUERY_FUNC_CAP_VF_ENABLE_QP0 ;
 size_t QUERY_FUNC_CAP_VLAN_OFFLOAD_DISABLE ;
 size_t RES_CQ ;
 size_t RES_MPT ;
 size_t RES_MTT ;
 size_t RES_QP ;
 size_t RES_SRQ ;
 int bitmap_weight (int ,int ) ;
 size_t find_first_bit (int ,int ) ;
 scalar_t__ htons (int ) ;
 size_t min (int ,int ) ;
 scalar_t__ mlx4_QUERY_FUNC (struct mlx4_dev*,struct mlx4_func*,int) ;
 struct mlx4_active_ports mlx4_get_active_ports (struct mlx4_dev*,int) ;
 int mlx4_get_parav_qkey (struct mlx4_dev*,int,int*) ;
 int mlx4_handle_vst_qinq (struct mlx4_priv*,int,size_t) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slave_convert_port (struct mlx4_dev*,int,int) ;
 scalar_t__ mlx4_vf_smi_enabled (struct mlx4_dev*,int,size_t) ;
 int rounddown_pow_of_two (int) ;

int mlx4_QUERY_FUNC_CAP_wrapper(struct mlx4_dev *dev, int slave,
    struct mlx4_vhcr *vhcr,
    struct mlx4_cmd_mailbox *inbox,
    struct mlx4_cmd_mailbox *outbox,
    struct mlx4_cmd_info *cmd)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 u8 field, port;
 u32 size, proxy_qp, qkey;
 int err = 0;
 struct mlx4_func func;
 if (vhcr->op_modifier == 1) {
  struct mlx4_active_ports actv_ports =
   mlx4_get_active_ports(dev, slave);
  int converted_port = mlx4_slave_convert_port(
    dev, slave, vhcr->in_modifier);
  struct mlx4_vport_oper_state *vp_oper;

  if (converted_port < 0)
   return -EINVAL;

  vhcr->in_modifier = converted_port;

  field = vhcr->in_modifier -
   find_first_bit(actv_ports.ports, dev->caps.num_ports);
  MLX4_PUT(outbox->buf, field, 0x3);

  port = vhcr->in_modifier;
  proxy_qp = dev->phys_caps.base_proxy_sqpn + 8 * slave + port - 1;


  field = 0x10;

  if (mlx4_vf_smi_enabled(dev, slave, port) &&
      !mlx4_get_parav_qkey(dev, proxy_qp, &qkey)) {
   field |= 0x08;
   MLX4_PUT(outbox->buf, qkey,
     0x4);
  }
  MLX4_PUT(outbox->buf, field, 0xc);


  size = dev->phys_caps.base_tunnel_sqpn + 8 * slave + port - 1;
  MLX4_PUT(outbox->buf, size, 0x10);

  size += 2;
  MLX4_PUT(outbox->buf, size, 0x18);

  MLX4_PUT(outbox->buf, proxy_qp, 0x14);
  proxy_qp += 2;
  MLX4_PUT(outbox->buf, proxy_qp, 0x1c);

  MLX4_PUT(outbox->buf, dev->caps.phys_port_id[vhcr->in_modifier],
    0x28);

  vp_oper = &priv->mfunc.master.vf_oper[slave].vport[port];
  err = mlx4_handle_vst_qinq(priv, slave, port);
  if (err)
   return err;

  field = 0;
  if (dev->caps.phv_bit[port])
   field |= 0x40;
  if (vp_oper->state.vlan_proto == htons(ETH_P_8021AD))
   field |= 0x20;
  MLX4_PUT(outbox->buf, field, 0x8);

 } else if (vhcr->op_modifier == 0) {
  struct mlx4_active_ports actv_ports =
   mlx4_get_active_ports(dev, slave);
  struct mlx4_slave_state *slave_state =
   &priv->mfunc.master.slave_state[slave];




  field = (0x80 | 0x40 |
    0x10 | 0x04 |
    0x08);
  MLX4_PUT(outbox->buf, field, 0x0);

  field = min(
   bitmap_weight(actv_ports.ports, dev->caps.num_ports),
   dev->caps.num_ports);
  MLX4_PUT(outbox->buf, field, 0x1);

  size = dev->caps.function_caps;
  MLX4_PUT(outbox->buf, size, 0x4);

  field = 0;
  MLX4_PUT(outbox->buf, field, 0x8);

  size = priv->mfunc.master.res_tracker.res_alloc[RES_QP].quota[slave];
  MLX4_PUT(outbox->buf, size, 0x50);
  size = dev->caps.num_qps;
  MLX4_PUT(outbox->buf, size, 0x10);

  size = priv->mfunc.master.res_tracker.res_alloc[RES_SRQ].quota[slave];
  MLX4_PUT(outbox->buf, size, 0x58);
  size = dev->caps.num_srqs;
  MLX4_PUT(outbox->buf, size, 0x18);

  size = priv->mfunc.master.res_tracker.res_alloc[RES_CQ].quota[slave];
  MLX4_PUT(outbox->buf, size, 0x54);
  size = dev->caps.num_cqs;
  MLX4_PUT(outbox->buf, size, 0x14);

  if (!(dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS) ||
      mlx4_QUERY_FUNC(dev, &func, slave)) {
   size = vhcr->in_modifier &
    BIT(31) ?
    dev->caps.num_eqs :
    rounddown_pow_of_two(dev->caps.num_eqs);
   MLX4_PUT(outbox->buf, size, 0x2c);
   size = dev->caps.reserved_eqs;
   MLX4_PUT(outbox->buf, size, 0x30);
  } else {
   size = vhcr->in_modifier &
    BIT(31) ?
    func.max_eq :
    rounddown_pow_of_two(func.max_eq);
   MLX4_PUT(outbox->buf, size, 0x2c);
   size = func.rsvd_eqs;
   MLX4_PUT(outbox->buf, size, 0x30);
  }

  size = priv->mfunc.master.res_tracker.res_alloc[RES_MPT].quota[slave];
  MLX4_PUT(outbox->buf, size, 0x60);
  size = dev->caps.num_mpts;
  MLX4_PUT(outbox->buf, size, 0x20);

  size = priv->mfunc.master.res_tracker.res_alloc[RES_MTT].quota[slave];
  MLX4_PUT(outbox->buf, size, 0x64);
  size = dev->caps.num_mtts;
  MLX4_PUT(outbox->buf, size, 0x24);

  size = dev->caps.num_mgms + dev->caps.num_amgms;
  MLX4_PUT(outbox->buf, size, 0x68);
  MLX4_PUT(outbox->buf, size, 0x28);

  size = (1UL << 31) |
   (1UL << 30);
  MLX4_PUT(outbox->buf, size, 0x6c);

  size = dev->caps.reserved_lkey + ((slave << 8) & 0xFF00);
  MLX4_PUT(outbox->buf, size, 0x48);

  if (vhcr->in_modifier & BIT(30))
   slave_state->vst_qinq_supported = 1;

 } else
  err = -EINVAL;

 return err;
}
