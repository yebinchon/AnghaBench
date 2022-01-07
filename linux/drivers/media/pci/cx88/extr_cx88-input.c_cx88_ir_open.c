
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {struct cx88_core* priv; } ;
struct cx88_core {TYPE_1__* ir; } ;
struct TYPE_2__ {int users; } ;


 int __cx88_ir_start (struct cx88_core*) ;

__attribute__((used)) static int cx88_ir_open(struct rc_dev *rc)
{
 struct cx88_core *core = rc->priv;

 core->ir->users++;
 return __cx88_ir_start(core);
}
