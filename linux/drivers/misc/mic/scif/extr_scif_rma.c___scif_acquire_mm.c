
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int current ;
 struct mm_struct* get_task_mm (int ) ;
 scalar_t__ scif_ulimit_check ;

__attribute__((used)) static inline struct mm_struct *__scif_acquire_mm(void)
{
 if (scif_ulimit_check)
  return get_task_mm(current);
 return ((void*)0);
}
