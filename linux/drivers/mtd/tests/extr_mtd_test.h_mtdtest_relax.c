
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int cond_resched () ;
 int current ;
 int pr_info (char*) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static inline int mtdtest_relax(void)
{
 cond_resched();
 if (signal_pending(current)) {
  pr_info("aborting test due to pending signal!\n");
  return -EINTR;
 }

 return 0;
}
