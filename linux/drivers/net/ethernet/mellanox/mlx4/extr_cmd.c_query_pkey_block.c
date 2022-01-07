
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; scalar_t__ buf; } ;
struct ib_smp {scalar_t__ data; int attr_mod; } ;
typedef int __be16 ;


 int EINVAL ;
 int MLX4_CMD_MAD_IFC ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_C ;
 int be16_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int,int ,int ,int ) ;

__attribute__((used)) static int query_pkey_block(struct mlx4_dev *dev, u8 port, u16 index, u16 *pkey,
          struct mlx4_cmd_mailbox *inbox,
          struct mlx4_cmd_mailbox *outbox)
{
 struct ib_smp *in_mad = (struct ib_smp *)(inbox->buf);
 struct ib_smp *out_mad = (struct ib_smp *)(outbox->buf);
 int err;
 int i;

 if (index & 0x1f)
  return -EINVAL;

 in_mad->attr_mod = cpu_to_be32(index / 32);

 err = mlx4_cmd_box(dev, inbox->dma, outbox->dma, port, 3,
      MLX4_CMD_MAD_IFC, MLX4_CMD_TIME_CLASS_C,
      MLX4_CMD_NATIVE);
 if (err)
  return err;

 for (i = 0; i < 32; ++i)
  pkey[i] = be16_to_cpu(((__be16 *) out_mad->data)[i]);

 return err;
}
