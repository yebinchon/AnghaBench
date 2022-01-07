
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int mb_apu_waitq; int mb_cpu_waitq; } ;


 int IRQ_APU_TO_EPU_ACK ;
 int IRQ_CPU_TO_EPU_ACK ;
 int wake_up (int *) ;

__attribute__((used)) static void xpu_ack(struct cx18 *cx, u32 sw2)
{
 if (sw2 & IRQ_CPU_TO_EPU_ACK)
  wake_up(&cx->mb_cpu_waitq);
 if (sw2 & IRQ_APU_TO_EPU_ACK)
  wake_up(&cx->mb_apu_waitq);
}
