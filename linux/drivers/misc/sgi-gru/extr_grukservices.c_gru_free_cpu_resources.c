
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gru_unlock_kernel_context (int ) ;
 int preempt_enable () ;
 int uv_numa_blade_id () ;

__attribute__((used)) static void gru_free_cpu_resources(void *cb, void *dsr)
{
 gru_unlock_kernel_context(uv_numa_blade_id());
 preempt_enable();
}
