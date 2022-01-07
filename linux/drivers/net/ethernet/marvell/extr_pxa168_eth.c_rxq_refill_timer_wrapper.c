
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pxa168_eth_private {int napi; } ;


 struct pxa168_eth_private* from_timer (int ,struct timer_list*,int ) ;
 int napi_schedule (int *) ;
 struct pxa168_eth_private* pep ;
 int timeout ;

__attribute__((used)) static inline void rxq_refill_timer_wrapper(struct timer_list *t)
{
 struct pxa168_eth_private *pep = from_timer(pep, t, timeout);
 napi_schedule(&pep->napi);
}
