
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_txqsq {scalar_t__ cc; scalar_t__ pc; int sqn; TYPE_1__* channel; } ;
struct TYPE_2__ {int netdev; } ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int netdev_err (int ,char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int mlx5e_wait_for_sq_flush(struct mlx5e_txqsq *sq)
{
 unsigned long exp_time = jiffies + msecs_to_jiffies(2000);

 while (time_before(jiffies, exp_time)) {
  if (sq->cc == sq->pc)
   return 0;

  msleep(20);
 }

 netdev_err(sq->channel->netdev,
     "Wait for SQ 0x%x flush timeout (sq cc = 0x%x, sq pc = 0x%x)\n",
     sq->sqn, sq->cc, sq->pc);

 return -ETIMEDOUT;
}
