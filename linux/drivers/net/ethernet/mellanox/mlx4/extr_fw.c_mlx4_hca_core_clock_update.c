
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hca_core_clock; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dma; int * buf; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_HCA ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_GET (int ,int *,int ) ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int QUERY_HCA_CORE_CLOCK_OFFSET ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*) ;

__attribute__((used)) static int mlx4_hca_core_clock_update(struct mlx4_dev *dev)
{
 struct mlx4_cmd_mailbox *mailbox;
 __be32 *outbox;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox)) {
  mlx4_warn(dev, "hca_core_clock mailbox allocation failed\n");
  return PTR_ERR(mailbox);
 }
 outbox = mailbox->buf;

 err = mlx4_cmd_box(dev, 0, mailbox->dma, 0, 0,
      MLX4_CMD_QUERY_HCA,
      MLX4_CMD_TIME_CLASS_B,
      !mlx4_is_slave(dev));
 if (err) {
  mlx4_warn(dev, "hca_core_clock update failed\n");
  goto out;
 }

 MLX4_GET(dev->caps.hca_core_clock, outbox, QUERY_HCA_CORE_CLOCK_OFFSET);

out:
 mlx4_free_cmd_mailbox(dev, mailbox);

 return err;
}
