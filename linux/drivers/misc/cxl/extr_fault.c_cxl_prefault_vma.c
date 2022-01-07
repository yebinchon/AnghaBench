
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {int mmap_sem; struct vm_area_struct* mmap; } ;
struct cxl_context {int pid; } ;
struct copro_slb {scalar_t__ esid; int vsid; } ;


 int copro_calculate_slb (struct mm_struct*,scalar_t__,struct copro_slb*) ;
 int cxl_load_segment (struct cxl_context*,struct copro_slb*) ;
 int down_read (int *) ;
 struct mm_struct* get_mem_context (struct cxl_context*) ;
 int mmput (struct mm_struct*) ;
 scalar_t__ next_segment (scalar_t__,int ) ;
 int pid_nr (int ) ;
 int pr_devel (char*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static void cxl_prefault_vma(struct cxl_context *ctx)
{
 u64 ea, last_esid = 0;
 struct copro_slb slb;
 struct vm_area_struct *vma;
 int rc;
 struct mm_struct *mm;

 mm = get_mem_context(ctx);
 if (mm == ((void*)0)) {
  pr_devel("cxl_prefault_vm unable to get mm %i\n",
    pid_nr(ctx->pid));
  return;
 }

 down_read(&mm->mmap_sem);
 for (vma = mm->mmap; vma; vma = vma->vm_next) {
  for (ea = vma->vm_start; ea < vma->vm_end;
    ea = next_segment(ea, slb.vsid)) {
   rc = copro_calculate_slb(mm, ea, &slb);
   if (rc)
    continue;

   if (last_esid == slb.esid)
    continue;

   cxl_load_segment(ctx, &slb);
   last_esid = slb.esid;
  }
 }
 up_read(&mm->mmap_sem);

 mmput(mm);
}
