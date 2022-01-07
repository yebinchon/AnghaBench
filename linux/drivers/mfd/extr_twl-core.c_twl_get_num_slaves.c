
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ twl_class_is_4030 () ;

__attribute__((used)) static inline int twl_get_num_slaves(void)
{
 if (twl_class_is_4030())
  return 4;
 else
  return 3;
}
