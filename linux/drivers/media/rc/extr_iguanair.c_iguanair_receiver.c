
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iguanair {int rc; TYPE_2__* packet; } ;
struct TYPE_3__ {int cmd; int direction; scalar_t__ start; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int CMD_RECEIVER_OFF ;
 int CMD_RECEIVER_ON ;
 int DIR_OUT ;
 int iguanair_send (struct iguanair*,int) ;
 int ir_raw_event_reset (int ) ;

__attribute__((used)) static int iguanair_receiver(struct iguanair *ir, bool enable)
{
 ir->packet->header.start = 0;
 ir->packet->header.direction = DIR_OUT;
 ir->packet->header.cmd = enable ? CMD_RECEIVER_ON : CMD_RECEIVER_OFF;

 if (enable)
  ir_raw_event_reset(ir->rc);

 return iguanair_send(ir, sizeof(ir->packet->header));
}
