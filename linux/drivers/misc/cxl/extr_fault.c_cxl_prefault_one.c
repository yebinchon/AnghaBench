
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mm_struct {int dummy; } ;
struct cxl_context {int pid; } ;


 int cxl_fault_segment (struct cxl_context*,struct mm_struct*,int ) ;
 struct mm_struct* get_mem_context (struct cxl_context*) ;
 int mmput (struct mm_struct*) ;
 int pid_nr (int ) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static void cxl_prefault_one(struct cxl_context *ctx, u64 ea)
{
 struct mm_struct *mm;

 mm = get_mem_context(ctx);
 if (mm == ((void*)0)) {
  pr_devel("cxl_prefault_one unable to get mm %i\n",
    pid_nr(ctx->pid));
  return;
 }

 cxl_fault_segment(ctx, mm, ea);

 mmput(mm);
}
