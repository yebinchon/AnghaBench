
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5e_rq {int rqn; int wq_type; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {int ix; int netdev; } ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 scalar_t__ mlx5_min_rx_wqes (int ,int ) ;
 int mlx5e_reporter_rx_timeout (struct mlx5e_rq*) ;
 scalar_t__ mlx5e_rqwq_get_cur_sz (struct mlx5e_rq*) ;
 int mlx5e_rqwq_get_size (struct mlx5e_rq*) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int netdev_warn (int ,char*,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int mlx5e_wait_for_min_rx_wqes(struct mlx5e_rq *rq, int wait_time)
{
 unsigned long exp_time = jiffies + msecs_to_jiffies(wait_time);
 struct mlx5e_channel *c = rq->channel;

 u16 min_wqes = mlx5_min_rx_wqes(rq->wq_type, mlx5e_rqwq_get_size(rq));

 do {
  if (mlx5e_rqwq_get_cur_sz(rq) >= min_wqes)
   return 0;

  msleep(20);
 } while (time_before(jiffies, exp_time));

 netdev_warn(c->netdev, "Failed to get min RX wqes on Channel[%d] RQN[0x%x] wq cur_sz(%d) min_rx_wqes(%d)\n",
      c->ix, rq->rqn, mlx5e_rqwq_get_cur_sz(rq), min_wqes);

 mlx5e_reporter_rx_timeout(rq);
 return -ETIMEDOUT;
}
