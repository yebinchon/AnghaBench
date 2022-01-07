
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct cxl_calls {int (* cxl_slbia ) (struct mm_struct*) ;} ;


 struct cxl_calls* cxl_calls_get () ;
 int cxl_calls_put (struct cxl_calls*) ;
 scalar_t__ cxl_ctx_in_use () ;
 int stub1 (struct mm_struct*) ;

void cxl_slbia(struct mm_struct *mm)
{
 struct cxl_calls *calls;

 calls = cxl_calls_get();
 if (!calls)
  return;

 if (cxl_ctx_in_use())
     calls->cxl_slbia(mm);

 cxl_calls_put(calls);
}
