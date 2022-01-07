
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_6__ {int dst_gid_msk; int dst_gid; } ;
struct TYPE_5__ {int dst_mac_msk; int dst_mac; } ;
struct TYPE_4__ {int * member_0; } ;
struct mlx4_spec_list {int list; TYPE_3__ ib; int id; TYPE_2__ eth; TYPE_1__ member_0; } ;
struct mlx4_qp {int qpn; } ;
struct mlx4_net_trans_rule {int allow_loopback; int list; int qpn; int port; int priority; int promisc_mode; int exclusive; int queue_mode; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;
typedef int __be64 ;


 int EINVAL ;
 int ETH_ALEN ;
 int INIT_LIST_HEAD (int *) ;
 int MLX4_DOMAIN_NIC ;
 int MLX4_FS_REGULAR ;
 int MLX4_MAC_MASK ;
 int MLX4_NET_TRANS_Q_FIFO ;
 int MLX4_NET_TRANS_RULE_ID_ETH ;
 int MLX4_NET_TRANS_RULE_ID_IB ;


 int cpu_to_be64 (int) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int *,int) ;
 int memset (int *,int,int) ;
 int mlx4_flow_attach (struct mlx4_dev*,struct mlx4_net_trans_rule*,int *) ;

int mlx4_trans_to_dmfs_attach(struct mlx4_dev *dev, struct mlx4_qp *qp,
         u8 gid[16], u8 port,
         int block_mcast_loopback,
         enum mlx4_protocol prot, u64 *reg_id)
{
  struct mlx4_spec_list spec = { {((void*)0)} };
  __be64 mac_mask = cpu_to_be64(MLX4_MAC_MASK << 16);

  struct mlx4_net_trans_rule rule = {
   .queue_mode = MLX4_NET_TRANS_Q_FIFO,
   .exclusive = 0,
   .promisc_mode = MLX4_FS_REGULAR,
   .priority = MLX4_DOMAIN_NIC,
  };

  rule.allow_loopback = !block_mcast_loopback;
  rule.port = port;
  rule.qpn = qp->qpn;
  INIT_LIST_HEAD(&rule.list);

  switch (prot) {
  case 129:
   spec.id = MLX4_NET_TRANS_RULE_ID_ETH;
   memcpy(spec.eth.dst_mac, &gid[10], ETH_ALEN);
   memcpy(spec.eth.dst_mac_msk, &mac_mask, ETH_ALEN);
   break;

  case 128:
   spec.id = MLX4_NET_TRANS_RULE_ID_IB;
   memcpy(spec.ib.dst_gid, gid, 16);
   memset(&spec.ib.dst_gid_msk, 0xff, 16);
   break;
  default:
   return -EINVAL;
  }
  list_add_tail(&spec.list, &rule.list);

  return mlx4_flow_attach(dev, &rule, reg_id);
}
