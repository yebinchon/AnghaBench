
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



__attribute__((used)) static void
preview_params_unlock(struct isp_prev_device *prev, u32 update, bool shadow)
{
 u32 active = prev->params.active;

 if (shadow) {



  prev->params.params[0].update |= (~active & update);
  prev->params.params[1].update |= (active & update);
  prev->params.params[0].busy &= active;
  prev->params.params[1].busy &= ~active;
 } else {



  prev->params.params[0].update &= ~(active & update);
  prev->params.params[1].update &= ~(~active & update);
  prev->params.params[0].busy &= ~active;
  prev->params.params[1].busy &= active;
 }
}
