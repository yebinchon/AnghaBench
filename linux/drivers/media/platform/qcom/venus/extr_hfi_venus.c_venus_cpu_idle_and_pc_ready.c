
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_hfi_device {int dummy; } ;


 int CPU_CS_SCIACMDARG0 ;
 int CPU_CS_SCIACMDARG0_PC_READY ;
 int WRAPPER_CPU_STATUS ;
 int WRAPPER_CPU_STATUS_WFI ;
 int venus_readl (struct venus_hfi_device*,int ) ;

__attribute__((used)) static bool venus_cpu_idle_and_pc_ready(struct venus_hfi_device *hdev)
{
 u32 ctrl_status, cpu_status;

 cpu_status = venus_readl(hdev, WRAPPER_CPU_STATUS);
 ctrl_status = venus_readl(hdev, CPU_CS_SCIACMDARG0);

 if (cpu_status & WRAPPER_CPU_STATUS_WFI &&
     ctrl_status & CPU_CS_SCIACMDARG0_PC_READY)
  return 1;

 return 0;
}
