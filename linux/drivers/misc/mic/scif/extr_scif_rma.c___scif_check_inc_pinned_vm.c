
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int pinned_vm; } ;
struct TYPE_3__ {int this_device; } ;
struct TYPE_4__ {TYPE_1__ mdev; } ;


 int CAP_IPC_LOCK ;
 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int RLIMIT_MEMLOCK ;
 unsigned long atomic64_add_return (int,int *) ;
 int atomic64_sub (int,int *) ;
 int capable (int ) ;
 int dev_err (int ,char*,unsigned long,unsigned long) ;
 unsigned long rlimit (int ) ;
 TYPE_2__ scif_info ;
 int scif_ulimit_check ;

__attribute__((used)) static inline int __scif_check_inc_pinned_vm(struct mm_struct *mm,
          int nr_pages)
{
 unsigned long locked, lock_limit;

 if (!mm || !nr_pages || !scif_ulimit_check)
  return 0;

 lock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
 locked = atomic64_add_return(nr_pages, &mm->pinned_vm);

 if ((locked > lock_limit) && !capable(CAP_IPC_LOCK)) {
  atomic64_sub(nr_pages, &mm->pinned_vm);
  dev_err(scif_info.mdev.this_device,
   "locked(%lu) > lock_limit(%lu)\n",
   locked, lock_limit);
  return -ENOMEM;
 }
 return 0;
}
