
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_SIZE ;
 int FOLL_WRITE ;
 int access_process_vm (int ,unsigned long,void (*) (),int,int ) ;
 int current ;
 void do_nothing () ;
 int pr_info (char*,...) ;

__attribute__((used)) static void execute_user_location(void *dst)
{
 int copied;


 void (*func)(void) = dst;

 pr_info("attempting ok execution at %px\n", do_nothing);
 do_nothing();

 copied = access_process_vm(current, (unsigned long)dst, do_nothing,
       EXEC_SIZE, FOLL_WRITE);
 if (copied < EXEC_SIZE)
  return;
 pr_info("attempting bad execution at %px\n", func);
 func();
}
