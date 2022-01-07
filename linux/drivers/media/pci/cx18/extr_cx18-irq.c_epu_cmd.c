
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int dummy; } ;


 int APU ;
 int CPU ;
 int IRQ_APU_TO_EPU ;
 int IRQ_CPU_TO_EPU ;
 int cx18_api_epu_cmd_irq (struct cx18*,int ) ;

__attribute__((used)) static void epu_cmd(struct cx18 *cx, u32 sw1)
{
 if (sw1 & IRQ_CPU_TO_EPU)
  cx18_api_epu_cmd_irq(cx, CPU);
 if (sw1 & IRQ_APU_TO_EPU)
  cx18_api_epu_cmd_irq(cx, APU);
}
