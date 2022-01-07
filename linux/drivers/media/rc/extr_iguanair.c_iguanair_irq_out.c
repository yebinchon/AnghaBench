
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; struct iguanair* context; } ;
struct iguanair {int completion; TYPE_2__* packet; int dev; } ;
struct TYPE_3__ {scalar_t__ cmd; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 scalar_t__ CMD_NOP ;
 int complete (int *) ;
 int dev_dbg (int ,char*,int ) ;

__attribute__((used)) static void iguanair_irq_out(struct urb *urb)
{
 struct iguanair *ir = urb->context;

 if (urb->status)
  dev_dbg(ir->dev, "Error: out urb status = %d\n", urb->status);


 if (urb->status == 0 && ir->packet->header.cmd == CMD_NOP)
  complete(&ir->completion);
}
