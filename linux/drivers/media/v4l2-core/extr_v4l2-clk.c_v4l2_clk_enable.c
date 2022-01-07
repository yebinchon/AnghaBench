
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_clk {int enable; int lock; TYPE_1__* ops; scalar_t__ clk; } ;
struct TYPE_2__ {int (* enable ) (struct v4l2_clk*) ;} ;


 int clk_prepare_enable (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct v4l2_clk*) ;
 int v4l2_clk_lock_driver (struct v4l2_clk*) ;

int v4l2_clk_enable(struct v4l2_clk *clk)
{
 int ret;

 if (clk->clk)
  return clk_prepare_enable(clk->clk);

 ret = v4l2_clk_lock_driver(clk);
 if (ret < 0)
  return ret;

 mutex_lock(&clk->lock);

 if (++clk->enable == 1 && clk->ops->enable) {
  ret = clk->ops->enable(clk);
  if (ret < 0)
   clk->enable--;
 }

 mutex_unlock(&clk->lock);

 return ret;
}
