
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct filter_ctx {int result; int completion; } ;
struct ch_filter_specification {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CXGB4_SHUTTING_DOWN ;
 int ETIMEDOUT ;
 int HZ ;
 int __cxgb4_del_filter (struct net_device*,int,struct ch_filter_specification*,struct filter_ctx*) ;
 int init_completion (int *) ;
 TYPE_1__* netdev2adap (struct net_device*) ;
 int wait_for_completion_timeout (int *,int) ;

int cxgb4_del_filter(struct net_device *dev, int filter_id,
       struct ch_filter_specification *fs)
{
 struct filter_ctx ctx;
 int ret;

 if (netdev2adap(dev)->flags & CXGB4_SHUTTING_DOWN)
  return 0;

 init_completion(&ctx.completion);

 ret = __cxgb4_del_filter(dev, filter_id, fs, &ctx);
 if (ret)
  goto out;


 ret = wait_for_completion_timeout(&ctx.completion, 10 * HZ);
 if (!ret)
  return -ETIMEDOUT;

 ret = ctx.result;
out:
 return ret;
}
