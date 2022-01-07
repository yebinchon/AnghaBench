
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOVERFLOW ;

__attribute__((used)) static int altera_check_stack(int stack_ptr, int count, int *status)
{
 if (stack_ptr < count) {
  *status = -EOVERFLOW;
  return 0;
 }

 return 1;
}
