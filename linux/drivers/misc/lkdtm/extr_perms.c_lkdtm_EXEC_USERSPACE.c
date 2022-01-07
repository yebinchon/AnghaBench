
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 int PAGE_SIZE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 unsigned long TASK_SIZE ;
 int execute_user_location (void*) ;
 int pr_warn (char*) ;
 unsigned long vm_mmap (int *,int ,int ,int,int,int ) ;
 int vm_munmap (unsigned long,int ) ;

void lkdtm_EXEC_USERSPACE(void)
{
 unsigned long user_addr;

 user_addr = vm_mmap(((void*)0), 0, PAGE_SIZE,
       PROT_READ | PROT_WRITE | PROT_EXEC,
       MAP_ANONYMOUS | MAP_PRIVATE, 0);
 if (user_addr >= TASK_SIZE) {
  pr_warn("Failed to allocate user memory\n");
  return;
 }
 execute_user_location((void *)user_addr);
 vm_munmap(user_addr, PAGE_SIZE);
}
