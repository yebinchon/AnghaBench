
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp_context {int dummy; } ;
struct mlx4_qp {int qpn; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {scalar_t__ buf; int dma; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_QP ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int memcpy (struct mlx4_qp_context*,scalar_t__,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_qp_query(struct mlx4_dev *dev, struct mlx4_qp *qp,
    struct mlx4_qp_context *context)
{
 struct mlx4_cmd_mailbox *mailbox;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 err = mlx4_cmd_box(dev, 0, mailbox->dma, qp->qpn, 0,
      MLX4_CMD_QUERY_QP, MLX4_CMD_TIME_CLASS_A,
      MLX4_CMD_WRAPPED);
 if (!err)
  memcpy(context, mailbox->buf + 8, sizeof(*context));

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
