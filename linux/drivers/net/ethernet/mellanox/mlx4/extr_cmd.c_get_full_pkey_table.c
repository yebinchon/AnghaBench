
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct TYPE_2__ {int* pkey_table_len; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dummy; } ;


 int query_pkey_block (struct mlx4_dev*,size_t,int,int *,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*) ;

__attribute__((used)) static int get_full_pkey_table(struct mlx4_dev *dev, u8 port, u16 *table,
          struct mlx4_cmd_mailbox *inbox,
          struct mlx4_cmd_mailbox *outbox)
{
 int i;
 int err;

 for (i = 0; i < dev->caps.pkey_table_len[port]; i += 32) {
  err = query_pkey_block(dev, port, i, table + i, inbox, outbox);
  if (err)
   return err;
 }

 return 0;
}
