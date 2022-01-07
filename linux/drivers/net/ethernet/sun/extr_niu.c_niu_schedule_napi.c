
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct niu_ldg {int napi; int ldg_num; void* v2; void* v1; void* v0; } ;
struct niu {int dummy; } ;


 int __napi_schedule (int *) ;
 int __niu_fastpath_interrupt (struct niu*,int ,void*) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;

__attribute__((used)) static void niu_schedule_napi(struct niu *np, struct niu_ldg *lp,
         u64 v0, u64 v1, u64 v2)
{
 if (likely(napi_schedule_prep(&lp->napi))) {
  lp->v0 = v0;
  lp->v1 = v1;
  lp->v2 = v2;
  __niu_fastpath_interrupt(np, lp->ldg_num, v0);
  __napi_schedule(&lp->napi);
 }
}
