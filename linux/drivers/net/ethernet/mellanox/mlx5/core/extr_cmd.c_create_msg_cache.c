
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd {struct cmd_msg_cache* cache; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;
struct mlx5_cmd_msg {int list; struct cmd_msg_cache* parent; } ;
struct cmd_msg_cache {int num_ent; int head; int max_inbox_size; int lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct mlx5_cmd_msg*) ;
 int MLX5_NUM_COMMAND_CACHES ;
 int __GFP_NOWARN ;
 int * cmd_cache_ent_size ;
 int* cmd_cache_num_ent ;
 int list_add_tail (int *,int *) ;
 struct mlx5_cmd_msg* mlx5_alloc_cmd_msg (struct mlx5_core_dev*,int,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void create_msg_cache(struct mlx5_core_dev *dev)
{
 struct mlx5_cmd *cmd = &dev->cmd;
 struct cmd_msg_cache *ch;
 struct mlx5_cmd_msg *msg;
 int i;
 int k;


 for (k = 0; k < MLX5_NUM_COMMAND_CACHES; k++) {
  ch = &cmd->cache[k];
  spin_lock_init(&ch->lock);
  INIT_LIST_HEAD(&ch->head);
  ch->num_ent = cmd_cache_num_ent[k];
  ch->max_inbox_size = cmd_cache_ent_size[k];
  for (i = 0; i < ch->num_ent; i++) {
   msg = mlx5_alloc_cmd_msg(dev, GFP_KERNEL | __GFP_NOWARN,
       ch->max_inbox_size, 0);
   if (IS_ERR(msg))
    break;
   msg->parent = ch;
   list_add_tail(&msg->list, &ch->head);
  }
 }
}
