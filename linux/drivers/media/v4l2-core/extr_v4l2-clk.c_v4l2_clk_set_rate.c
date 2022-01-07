
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_clk {int lock; TYPE_1__* ops; scalar_t__ clk; } ;
struct TYPE_2__ {int (* set_rate ) (struct v4l2_clk*,unsigned long) ;} ;


 int ENOSYS ;
 long clk_round_rate (scalar_t__,unsigned long) ;
 int clk_set_rate (scalar_t__,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct v4l2_clk*,unsigned long) ;
 int v4l2_clk_lock_driver (struct v4l2_clk*) ;
 int v4l2_clk_unlock_driver (struct v4l2_clk*) ;

int v4l2_clk_set_rate(struct v4l2_clk *clk, unsigned long rate)
{
 int ret;

 if (clk->clk) {
  long r = clk_round_rate(clk->clk, rate);
  if (r < 0)
   return r;
  return clk_set_rate(clk->clk, r);
 }

 ret = v4l2_clk_lock_driver(clk);

 if (ret < 0)
  return ret;

 mutex_lock(&clk->lock);
 if (!clk->ops->set_rate)
  ret = -ENOSYS;
 else
  ret = clk->ops->set_rate(clk, rate);
 mutex_unlock(&clk->lock);

 v4l2_clk_unlock_driver(clk);

 return ret;
}
