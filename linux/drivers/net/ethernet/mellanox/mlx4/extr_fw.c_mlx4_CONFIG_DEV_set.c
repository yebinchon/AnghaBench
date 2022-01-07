
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
struct mlx4_config_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_CONFIG_DEV ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_B ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int memcpy (int ,struct mlx4_config_dev*,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

__attribute__((used)) static int mlx4_CONFIG_DEV_set(struct mlx4_dev *dev, struct mlx4_config_dev *config_dev)
{
 int err;
 struct mlx4_cmd_mailbox *mailbox;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 memcpy(mailbox->buf, config_dev, sizeof(*config_dev));

 err = mlx4_cmd(dev, mailbox->dma, 0, 0, MLX4_CMD_CONFIG_DEV,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
