
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {int pdev; } ;


 scalar_t__ CPU_MODE ;
 int CPU_MODE_HALT ;
 scalar_t__ CPU_STATE ;
 int EBUSY ;
 scalar_t__ pci_channel_offline (int ) ;
 int tr32 (scalar_t__) ;
 int tw32 (scalar_t__,int) ;

__attribute__((used)) static int tg3_pause_cpu(struct tg3 *tp, u32 cpu_base)
{
 int i;
 const int iters = 10000;

 for (i = 0; i < iters; i++) {
  tw32(cpu_base + CPU_STATE, 0xffffffff);
  tw32(cpu_base + CPU_MODE, CPU_MODE_HALT);
  if (tr32(cpu_base + CPU_MODE) & CPU_MODE_HALT)
   break;
  if (pci_channel_offline(tp->pdev))
   return -EBUSY;
 }

 return (i == iters) ? -EBUSY : 0;
}
