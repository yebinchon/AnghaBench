
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_cmd_msg {struct mlx5_cmd_mailbox* next; } ;
struct mlx5_cmd_mailbox {struct mlx5_cmd_mailbox* next; } ;


 int free_cmd_box (struct mlx5_core_dev*,struct mlx5_cmd_mailbox*) ;
 int kfree (struct mlx5_cmd_msg*) ;

__attribute__((used)) static void mlx5_free_cmd_msg(struct mlx5_core_dev *dev,
         struct mlx5_cmd_msg *msg)
{
 struct mlx5_cmd_mailbox *head = msg->next;
 struct mlx5_cmd_mailbox *next;

 while (head) {
  next = head->next;
  free_cmd_box(dev, head);
  head = next;
 }
 kfree(msg);
}
