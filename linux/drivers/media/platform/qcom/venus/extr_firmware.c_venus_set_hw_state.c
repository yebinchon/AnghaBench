
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {scalar_t__ base; scalar_t__ use_tz; } ;


 scalar_t__ WRAPPER_A9SS_SW_RESET ;
 int qcom_scm_set_remote_state (int,int ) ;
 int venus_reset_cpu (struct venus_core*) ;
 int writel (int,scalar_t__) ;

int venus_set_hw_state(struct venus_core *core, bool resume)
{
 if (core->use_tz)
  return qcom_scm_set_remote_state(resume, 0);

 if (resume)
  venus_reset_cpu(core);
 else
  writel(1, core->base + WRAPPER_A9SS_SW_RESET);

 return 0;
}
