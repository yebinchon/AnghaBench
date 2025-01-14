
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_set_vlan_fltr_mbox {int * entry; } ;
struct mlx4_en_priv {int port; int active_vlans; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; struct mlx4_set_vlan_fltr_mbox* buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_SET_VLAN_FLTR ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int VLAN_FLTR_SIZE ;
 int cpu_to_be32 (int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 scalar_t__ test_bit (int ,int ) ;

int mlx4_SET_VLAN_FLTR(struct mlx4_dev *dev, struct mlx4_en_priv *priv)
{
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_set_vlan_fltr_mbox *filter;
 int i;
 int j;
 int index = 0;
 u32 entry;
 int err = 0;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 filter = mailbox->buf;
 for (i = VLAN_FLTR_SIZE - 1; i >= 0; i--) {
  entry = 0;
  for (j = 0; j < 32; j++)
   if (test_bit(index++, priv->active_vlans))
    entry |= 1 << j;
  filter->entry[i] = cpu_to_be32(entry);
 }
 err = mlx4_cmd(dev, mailbox->dma, priv->port, 0, MLX4_CMD_SET_VLAN_FLTR,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);
 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
