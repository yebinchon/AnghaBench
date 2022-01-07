
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_queue {int n_bd; int n_win; int low_mark; int high_mark; scalar_t__ read_ptr; scalar_t__ write_ptr; int id; } ;
struct il_priv {int dummy; } ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int TFD_QUEUE_SIZE_MAX ;
 int is_power_of_2 (int) ;

__attribute__((used)) static int
il_queue_init(struct il_priv *il, struct il_queue *q, int slots, u32 id)
{




 BUILD_BUG_ON(TFD_QUEUE_SIZE_MAX & (TFD_QUEUE_SIZE_MAX - 1));

 q->n_bd = TFD_QUEUE_SIZE_MAX;

 q->n_win = slots;
 q->id = id;



 BUG_ON(!is_power_of_2(slots));

 q->low_mark = q->n_win / 4;
 if (q->low_mark < 4)
  q->low_mark = 4;

 q->high_mark = q->n_win / 8;
 if (q->high_mark < 2)
  q->high_mark = 2;

 q->write_ptr = q->read_ptr = 0;

 return 0;
}
