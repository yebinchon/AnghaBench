
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWL4030_MODULE_LAST ;
 int TWL6030_MODULE_LAST ;
 scalar_t__ twl_class_is_4030 () ;

__attribute__((used)) static inline int twl_get_last_module(void)
{
 if (twl_class_is_4030())
  return TWL4030_MODULE_LAST;
 else
  return TWL6030_MODULE_LAST;
}
