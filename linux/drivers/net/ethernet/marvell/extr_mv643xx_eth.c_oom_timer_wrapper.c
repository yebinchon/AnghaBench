
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mv643xx_eth_private {int napi; } ;


 struct mv643xx_eth_private* from_timer (int ,struct timer_list*,int ) ;
 struct mv643xx_eth_private* mp ;
 int napi_schedule (int *) ;
 int rx_oom ;

__attribute__((used)) static inline void oom_timer_wrapper(struct timer_list *t)
{
 struct mv643xx_eth_private *mp = from_timer(mp, t, rx_oom);

 napi_schedule(&mp->napi);
}
