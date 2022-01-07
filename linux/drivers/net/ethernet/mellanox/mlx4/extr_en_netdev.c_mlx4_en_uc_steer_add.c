
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_6__ {int * dst_mac_msk; int * dst_mac; } ;
struct TYPE_5__ {int * member_0; } ;
struct mlx4_spec_list {int list; TYPE_3__ eth; int id; TYPE_2__ member_0; } ;
struct mlx4_qp {int qpn; } ;
struct mlx4_net_trans_rule {int allow_loopback; int qpn; int list; int port; int priority; int promisc_mode; int exclusive; int queue_mode; } ;
struct mlx4_en_priv {int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {struct mlx4_dev* dev; } ;
struct TYPE_4__ {int steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef unsigned char __be64 ;


 int EINVAL ;
 int ETH_ALEN ;
 int INIT_LIST_HEAD (int *) ;
 int MLX4_DOMAIN_NIC ;
 int MLX4_FS_REGULAR ;
 int MLX4_MAC_MASK ;
 int MLX4_NET_TRANS_Q_FIFO ;
 int MLX4_NET_TRANS_RULE_ID_ETH ;
 int MLX4_PROT_ETH ;


 unsigned char cpu_to_be64 (int) ;
 int en_warn (struct mlx4_en_priv*,char*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,unsigned char*,int ) ;
 int mlx4_flow_attach (struct mlx4_dev*,struct mlx4_net_trans_rule*,int *) ;
 int mlx4_unicast_attach (struct mlx4_dev*,struct mlx4_qp*,int *,int ,int ) ;

__attribute__((used)) static int mlx4_en_uc_steer_add(struct mlx4_en_priv *priv,
    unsigned char *mac, int *qpn, u64 *reg_id)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_dev *dev = mdev->dev;
 int err;

 switch (dev->caps.steering_mode) {
 case 129: {
  struct mlx4_qp qp;
  u8 gid[16] = {0};

  qp.qpn = *qpn;
  memcpy(&gid[10], mac, ETH_ALEN);
  gid[5] = priv->port;

  err = mlx4_unicast_attach(dev, &qp, gid, 0, MLX4_PROT_ETH);
  break;
 }
 case 128: {
  struct mlx4_spec_list spec_eth = { {((void*)0)} };
  __be64 mac_mask = cpu_to_be64(MLX4_MAC_MASK << 16);

  struct mlx4_net_trans_rule rule = {
   .queue_mode = MLX4_NET_TRANS_Q_FIFO,
   .exclusive = 0,
   .allow_loopback = 1,
   .promisc_mode = MLX4_FS_REGULAR,
   .priority = MLX4_DOMAIN_NIC,
  };

  rule.port = priv->port;
  rule.qpn = *qpn;
  INIT_LIST_HEAD(&rule.list);

  spec_eth.id = MLX4_NET_TRANS_RULE_ID_ETH;
  memcpy(spec_eth.eth.dst_mac, mac, ETH_ALEN);
  memcpy(spec_eth.eth.dst_mac_msk, &mac_mask, ETH_ALEN);
  list_add_tail(&spec_eth.list, &rule.list);

  err = mlx4_flow_attach(dev, &rule, reg_id);
  break;
 }
 default:
  return -EINVAL;
 }
 if (err)
  en_warn(priv, "Failed Attaching Unicast\n");

 return err;
}
