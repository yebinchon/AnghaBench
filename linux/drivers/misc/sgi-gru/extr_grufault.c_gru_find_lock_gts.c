
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct gru_thread_state {int ts_ctxlock; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int TSID (unsigned long,struct vm_area_struct*) ;
 TYPE_1__* current ;
 int down_read (int *) ;
 struct gru_thread_state* gru_find_thread_state (struct vm_area_struct*,int ) ;
 struct vm_area_struct* gru_find_vma (unsigned long) ;
 int mutex_lock (int *) ;
 int up_read (int *) ;

__attribute__((used)) static struct gru_thread_state *gru_find_lock_gts(unsigned long vaddr)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 struct gru_thread_state *gts = ((void*)0);

 down_read(&mm->mmap_sem);
 vma = gru_find_vma(vaddr);
 if (vma)
  gts = gru_find_thread_state(vma, TSID(vaddr, vma));
 if (gts)
  mutex_lock(&gts->ts_ctxlock);
 else
  up_read(&mm->mmap_sem);
 return gts;
}
