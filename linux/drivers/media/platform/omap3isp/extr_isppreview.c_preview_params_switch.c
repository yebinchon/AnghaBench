
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int active; TYPE_1__* params; } ;
struct isp_prev_device {TYPE_2__ params; } ;
struct TYPE_3__ {int update; int busy; } ;



__attribute__((used)) static void preview_params_switch(struct isp_prev_device *prev)
{
 u32 to_switch;





 to_switch = (prev->params.params[0].update & ~prev->params.active)
    | (prev->params.params[1].update & prev->params.active);
 to_switch &= ~(prev->params.params[0].busy |
         prev->params.params[1].busy);
 if (to_switch == 0)
  return;

 prev->params.active ^= to_switch;




 prev->params.params[0].update &= ~(~prev->params.active & to_switch);
 prev->params.params[1].update &= ~(prev->params.active & to_switch);
}
