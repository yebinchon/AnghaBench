
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;
struct mlx5_cmd_prot_block {int token; int block_num; int next; } ;
struct mlx5_cmd_msg {int len; struct mlx5_cmd_mailbox* next; } ;
struct mlx5_cmd_mailbox {struct mlx5_cmd_mailbox* next; int dma; struct mlx5_cmd_prot_block* buf; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct mlx5_cmd_msg* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mlx5_cmd_mailbox*) ;
 int PTR_ERR (struct mlx5_cmd_mailbox*) ;
 struct mlx5_cmd_mailbox* alloc_cmd_box (struct mlx5_core_dev*,int ) ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int free_cmd_box (struct mlx5_core_dev*,struct mlx5_cmd_mailbox*) ;
 int kfree (struct mlx5_cmd_msg*) ;
 struct mlx5_cmd_msg* kzalloc (int,int ) ;
 int mlx5_calc_cmd_blocks (struct mlx5_cmd_msg*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;

__attribute__((used)) static struct mlx5_cmd_msg *mlx5_alloc_cmd_msg(struct mlx5_core_dev *dev,
            gfp_t flags, int size,
            u8 token)
{
 struct mlx5_cmd_mailbox *tmp, *head = ((void*)0);
 struct mlx5_cmd_prot_block *block;
 struct mlx5_cmd_msg *msg;
 int err;
 int n;
 int i;

 msg = kzalloc(sizeof(*msg), flags);
 if (!msg)
  return ERR_PTR(-ENOMEM);

 msg->len = size;
 n = mlx5_calc_cmd_blocks(msg);

 for (i = 0; i < n; i++) {
  tmp = alloc_cmd_box(dev, flags);
  if (IS_ERR(tmp)) {
   mlx5_core_warn(dev, "failed allocating block\n");
   err = PTR_ERR(tmp);
   goto err_alloc;
  }

  block = tmp->buf;
  tmp->next = head;
  block->next = cpu_to_be64(tmp->next ? tmp->next->dma : 0);
  block->block_num = cpu_to_be32(n - i - 1);
  block->token = token;
  head = tmp;
 }
 msg->next = head;
 return msg;

err_alloc:
 while (head) {
  tmp = head->next;
  free_cmd_box(dev, head);
  head = tmp;
 }
 kfree(msg);

 return ERR_PTR(err);
}
