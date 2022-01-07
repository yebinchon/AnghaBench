
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; } ;
struct cx18_in_work_order {int rpu; TYPE_1__ mb; } ;
struct cx18 {int dummy; } ;






 int CX18_WARN (char*,int ) ;
 int epu_debug (struct cx18*,struct cx18_in_work_order*) ;
 int epu_dma_done (struct cx18*,struct cx18_in_work_order*) ;

__attribute__((used)) static void epu_cmd(struct cx18 *cx, struct cx18_in_work_order *order)
{
 switch (order->rpu) {
 case 130:
 {
  switch (order->mb.cmd) {
  case 128:
   epu_dma_done(cx, order);
   break;
  case 129:
   epu_debug(cx, order);
   break;
  default:
   CX18_WARN("Unknown CPU to EPU mailbox command %#0x\n",
      order->mb.cmd);
   break;
  }
  break;
 }
 case 131:
  CX18_WARN("Unknown APU to EPU mailbox command %#0x\n",
     order->mb.cmd);
  break;
 default:
  break;
 }
}
