
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tidr; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct mm_struct {TYPE_1__ context; } ;
struct cxllib_pe_attributes {scalar_t__ tid; scalar_t__ pid; int lpid; int sr; } ;


 unsigned long CXL_REAL_MODE ;
 unsigned long CXL_TRANSLATED_MODE ;
 int EINVAL ;
 int SPRN_LPID ;
 int cxl_calculate_sr (int,int ,int,int) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mfspr (int ) ;
 int mmput (struct mm_struct*) ;

int cxllib_get_PE_attributes(struct task_struct *task,
        unsigned long translation_mode,
        struct cxllib_pe_attributes *attr)
{
 struct mm_struct *mm = ((void*)0);

 if (translation_mode != CXL_TRANSLATED_MODE &&
  translation_mode != CXL_REAL_MODE)
  return -EINVAL;

 attr->sr = cxl_calculate_sr(0,
    task == ((void*)0),
    translation_mode == CXL_REAL_MODE,
    1);
 attr->lpid = mfspr(SPRN_LPID);
 if (task) {
  mm = get_task_mm(task);
  if (mm == ((void*)0))
   return -EINVAL;




  attr->pid = mm->context.id;
  mmput(mm);
  attr->tid = task->thread.tidr;
 } else {
  attr->pid = 0;
  attr->tid = 0;
 }
 return 0;
}
