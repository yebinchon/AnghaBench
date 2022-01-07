
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;
struct mlx5_cmd_mailbox {int dma; int buf; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct mlx5_cmd_mailbox*) ;

__attribute__((used)) static void free_cmd_box(struct mlx5_core_dev *dev,
    struct mlx5_cmd_mailbox *mailbox)
{
 dma_pool_free(dev->cmd.pool, mailbox->buf, mailbox->dma);
 kfree(mailbox);
}
