
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;
struct mlx5_cmd_mailbox {int * next; int buf; int dma; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct mlx5_cmd_mailbox* ERR_PTR (int ) ;
 int dma_pool_zalloc (int ,int ,int *) ;
 int kfree (struct mlx5_cmd_mailbox*) ;
 struct mlx5_cmd_mailbox* kmalloc (int,int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*) ;

__attribute__((used)) static struct mlx5_cmd_mailbox *alloc_cmd_box(struct mlx5_core_dev *dev,
           gfp_t flags)
{
 struct mlx5_cmd_mailbox *mailbox;

 mailbox = kmalloc(sizeof(*mailbox), flags);
 if (!mailbox)
  return ERR_PTR(-ENOMEM);

 mailbox->buf = dma_pool_zalloc(dev->cmd.pool, flags,
           &mailbox->dma);
 if (!mailbox->buf) {
  mlx5_core_dbg(dev, "failed allocation\n");
  kfree(mailbox);
  return ERR_PTR(-ENOMEM);
 }
 mailbox->next = ((void*)0);

 return mailbox;
}
