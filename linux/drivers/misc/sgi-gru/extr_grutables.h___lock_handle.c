
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 scalar_t__ test_and_set_bit (int,void*) ;

__attribute__((used)) static inline void __lock_handle(void *h)
{
 while (test_and_set_bit(1, h))
  cpu_relax();
}
