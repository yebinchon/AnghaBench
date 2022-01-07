
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx4_port_cap {int max_vl; int ib_mtu; int max_port_width; int max_gids; int max_pkeys; int link_state; int supported_port_types; int suggested_type; int default_sense; int dmfs_optimized_state; int max_tc_eth; int log_max_macs; int log_max_vlans; int eth_mtu; int def_mac; int trans_type; int vendor_oui; int wavelength; int trans_code; } ;
struct mlx4_dev {int flags; } ;
struct mlx4_cmd_mailbox {int* buf; int dma; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_QUERY_DEV_CAP ;
 int MLX4_CMD_QUERY_PORT ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_FLAG_OLD_PORT_CMDS ;
 int MLX4_GET (int,int*,int ) ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int QUERY_DEV_CAP_MAX_GID_OFFSET ;
 int QUERY_DEV_CAP_MAX_PKEY_OFFSET ;
 int QUERY_DEV_CAP_MTU_WIDTH_OFFSET ;
 int QUERY_DEV_CAP_VL_PORT_OFFSET ;
 int QUERY_PORT_ETH_MTU_OFFSET ;
 int QUERY_PORT_MAC_OFFSET ;
 int QUERY_PORT_MAX_GID_PKEY_OFFSET ;
 int QUERY_PORT_MAX_MACVLAN_OFFSET ;
 int QUERY_PORT_MAX_VL_OFFSET ;
 int QUERY_PORT_MTU_OFFSET ;
 int QUERY_PORT_SUPPORTED_TYPE_OFFSET ;
 int QUERY_PORT_TRANS_CODE_OFFSET ;
 int QUERY_PORT_TRANS_VENDOR_OFFSET ;
 int QUERY_PORT_WAVELENGTH_OFFSET ;
 int QUERY_PORT_WIDTH_OFFSET ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_QUERY_PORT(struct mlx4_dev *dev, int port, struct mlx4_port_cap *port_cap)
{
 struct mlx4_cmd_mailbox *mailbox;
 u32 *outbox;
 u8 field;
 u32 field32;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 outbox = mailbox->buf;

 if (dev->flags & MLX4_FLAG_OLD_PORT_CMDS) {
  err = mlx4_cmd_box(dev, 0, mailbox->dma, 0, 0, MLX4_CMD_QUERY_DEV_CAP,
       MLX4_CMD_TIME_CLASS_A,
       MLX4_CMD_NATIVE);

  if (err)
   goto out;

  MLX4_GET(field, outbox, QUERY_DEV_CAP_VL_PORT_OFFSET);
  port_cap->max_vl = field >> 4;
  MLX4_GET(field, outbox, QUERY_DEV_CAP_MTU_WIDTH_OFFSET);
  port_cap->ib_mtu = field >> 4;
  port_cap->max_port_width = field & 0xf;
  MLX4_GET(field, outbox, QUERY_DEV_CAP_MAX_GID_OFFSET);
  port_cap->max_gids = 1 << (field & 0xf);
  MLX4_GET(field, outbox, QUERY_DEV_CAP_MAX_PKEY_OFFSET);
  port_cap->max_pkeys = 1 << (field & 0xf);
 } else {
  err = mlx4_cmd_box(dev, 0, mailbox->dma, port, 0, MLX4_CMD_QUERY_PORT,
       MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
  if (err)
   goto out;

  MLX4_GET(field, outbox, 0x00);
  port_cap->link_state = (field & 0x80) >> 7;
  port_cap->supported_port_types = field & 3;
  port_cap->suggested_type = (field >> 3) & 1;
  port_cap->default_sense = (field >> 4) & 1;
  port_cap->dmfs_optimized_state = (field >> 5) & 1;
  MLX4_GET(field, outbox, 0x01);
  port_cap->ib_mtu = field & 0xf;
  MLX4_GET(field, outbox, 0x06);
  port_cap->max_port_width = field & 0xf;
  MLX4_GET(field, outbox, 0x07);
  port_cap->max_gids = 1 << (field >> 4);
  port_cap->max_pkeys = 1 << (field & 0xf);
  MLX4_GET(field, outbox, 0x0b);
  port_cap->max_vl = field & 0xf;
  port_cap->max_tc_eth = field >> 4;
  MLX4_GET(field, outbox, 0x0a);
  port_cap->log_max_macs = field & 0xf;
  port_cap->log_max_vlans = field >> 4;
  MLX4_GET(port_cap->eth_mtu, outbox, 0x02);
  MLX4_GET(port_cap->def_mac, outbox, 0x10);
  MLX4_GET(field32, outbox, 0x18);
  port_cap->trans_type = field32 >> 24;
  port_cap->vendor_oui = field32 & 0xffffff;
  MLX4_GET(port_cap->wavelength, outbox, 0x1c);
  MLX4_GET(port_cap->trans_code, outbox, 0x20);
 }

out:
 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
