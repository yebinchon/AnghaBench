
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 scalar_t__ gru_free_kernel_contexts () ;

void gru_kservices_exit(void)
{
 if (gru_free_kernel_contexts())
  BUG();
}
