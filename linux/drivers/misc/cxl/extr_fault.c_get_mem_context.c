
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mm_users; } ;
struct cxl_context {struct mm_struct* mm; } ;


 int atomic_inc_not_zero (int *) ;

__attribute__((used)) static struct mm_struct *get_mem_context(struct cxl_context *ctx)
{
 if (ctx->mm == ((void*)0))
  return ((void*)0);

 if (!atomic_inc_not_zero(&ctx->mm->mm_users))
  return ((void*)0);

 return ctx->mm;
}
