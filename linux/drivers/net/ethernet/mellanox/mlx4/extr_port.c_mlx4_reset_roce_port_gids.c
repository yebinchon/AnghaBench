
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_roce_gid_entry {int raw; } ;
struct mlx4_priv {TYPE_3__* port; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; scalar_t__ buf; } ;
struct TYPE_8__ {int raw; } ;
struct TYPE_6__ {int mutex; TYPE_1__* roce_gids; } ;
struct TYPE_7__ {TYPE_2__ gid_table; } ;
struct TYPE_5__ {int raw; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_SET_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_MAILBOX_SIZE ;
 int MLX4_ROCE_GID_ENTRY_SIZE ;
 int MLX4_ROCE_MAX_GIDS ;
 int MLX4_SET_PORT_ETH_OPCODE ;
 int MLX4_SET_PORT_GID_TABLE ;
 int memcpy (int ,int ,int ) ;
 int memset (scalar_t__,int ,int ) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int ,int ) ;
 int mlx4_get_base_gid_ix (struct mlx4_dev*,int,int) ;
 int mlx4_get_slave_num_gids (struct mlx4_dev*,int,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_4__ zgid_entry ;

__attribute__((used)) static int mlx4_reset_roce_port_gids(struct mlx4_dev *dev, int slave,
         int port, struct mlx4_cmd_mailbox *mailbox)
{
 struct mlx4_roce_gid_entry *gid_entry_mbox;
 struct mlx4_priv *priv = mlx4_priv(dev);
 int num_gids, base, offset;
 int i, err;

 num_gids = mlx4_get_slave_num_gids(dev, slave, port);
 base = mlx4_get_base_gid_ix(dev, slave, port);

 memset(mailbox->buf, 0, MLX4_MAILBOX_SIZE);

 mutex_lock(&(priv->port[port].gid_table.mutex));

 for (i = 0, offset = base; i < num_gids; offset++, i++)
  memcpy(priv->port[port].gid_table.roce_gids[offset].raw,
         zgid_entry.raw, MLX4_ROCE_GID_ENTRY_SIZE);


 gid_entry_mbox = (struct mlx4_roce_gid_entry *)mailbox->buf;
 for (i = 0; i < MLX4_ROCE_MAX_GIDS; gid_entry_mbox++, i++)
  memcpy(gid_entry_mbox->raw,
         priv->port[port].gid_table.roce_gids[i].raw,
         MLX4_ROCE_GID_ENTRY_SIZE);

 err = mlx4_cmd(dev, mailbox->dma,
         ((u32)port) | (MLX4_SET_PORT_GID_TABLE << 8),
         MLX4_SET_PORT_ETH_OPCODE, MLX4_CMD_SET_PORT,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
 mutex_unlock(&(priv->port[port].gid_table.mutex));
 return err;
}
