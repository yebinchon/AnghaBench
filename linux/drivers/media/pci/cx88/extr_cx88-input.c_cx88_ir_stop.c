
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx88_core {TYPE_1__* ir; } ;
struct TYPE_2__ {scalar_t__ users; } ;


 int __cx88_ir_stop (struct cx88_core*) ;

void cx88_ir_stop(struct cx88_core *core)
{
 if (core->ir->users)
  __cx88_ir_stop(core);
}
