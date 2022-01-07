
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd_msg {struct mlx5_cmd_mailbox* next; } ;
struct mlx5_cmd_mailbox {struct mlx5_cmd_mailbox* next; int buf; } ;


 int calc_block_sig (int ) ;
 int mlx5_calc_cmd_blocks (struct mlx5_cmd_msg*) ;

__attribute__((used)) static void calc_chain_sig(struct mlx5_cmd_msg *msg)
{
 struct mlx5_cmd_mailbox *next = msg->next;
 int n = mlx5_calc_cmd_blocks(msg);
 int i = 0;

 for (i = 0; i < n && next; i++) {
  calc_block_sig(next->buf);
  next = next->next;
 }
}
