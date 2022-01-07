
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_clk {int lock; TYPE_1__* ops; scalar_t__ clk; } ;
struct TYPE_2__ {int (* get_rate ) (struct v4l2_clk*) ;} ;


 int ENOSYS ;
 unsigned long clk_get_rate (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct v4l2_clk*) ;
 int v4l2_clk_lock_driver (struct v4l2_clk*) ;
 int v4l2_clk_unlock_driver (struct v4l2_clk*) ;

unsigned long v4l2_clk_get_rate(struct v4l2_clk *clk)
{
 int ret;

 if (clk->clk)
  return clk_get_rate(clk->clk);

 ret = v4l2_clk_lock_driver(clk);
 if (ret < 0)
  return ret;

 mutex_lock(&clk->lock);
 if (!clk->ops->get_rate)
  ret = -ENOSYS;
 else
  ret = clk->ops->get_rate(clk);
 mutex_unlock(&clk->lock);

 v4l2_clk_unlock_driver(clk);

 return ret;
}
