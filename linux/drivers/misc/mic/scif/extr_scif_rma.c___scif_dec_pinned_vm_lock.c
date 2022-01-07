
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pinned_vm; } ;


 int atomic64_sub (int,int *) ;
 int scif_ulimit_check ;

__attribute__((used)) static inline int
__scif_dec_pinned_vm_lock(struct mm_struct *mm,
     int nr_pages)
{
 if (!mm || !nr_pages || !scif_ulimit_check)
  return 0;

 atomic64_sub(nr_pages, &mm->pinned_vm);
 return 0;
}
