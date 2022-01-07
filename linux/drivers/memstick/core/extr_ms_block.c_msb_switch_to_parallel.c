
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int system; } ;
struct TYPE_4__ {TYPE_1__ param; } ;
struct msb_data {int caps; TYPE_2__ regs; } ;


 int EFAULT ;
 int MEMSTICK_CAP_AUTO_GET_INT ;
 int MEMSTICK_SYS_PAM ;
 int h_msb_parallel_switch ;
 int msb_reset (struct msb_data*,int) ;
 int msb_run_state_machine (struct msb_data*,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int msb_switch_to_parallel(struct msb_data *msb)
{
 int error;

 error = msb_run_state_machine(msb, h_msb_parallel_switch);
 if (error) {
  pr_err("Switch to parallel failed");
  msb->regs.param.system &= ~MEMSTICK_SYS_PAM;
  msb_reset(msb, 1);
  return -EFAULT;
 }

 msb->caps |= MEMSTICK_CAP_AUTO_GET_INT;
 return 0;
}
