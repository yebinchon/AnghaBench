
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int * arm_thread; } ;


 int kthread_stop (int *) ;

__attribute__((used)) static void av7110_arm_sync(struct av7110 *av7110)
{
 if (av7110->arm_thread)
  kthread_stop(av7110->arm_thread);

 av7110->arm_thread = ((void*)0);
}
