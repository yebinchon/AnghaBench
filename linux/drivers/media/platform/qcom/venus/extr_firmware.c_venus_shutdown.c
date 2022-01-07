
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {scalar_t__ use_tz; } ;


 int VENUS_PAS_ID ;
 int qcom_scm_pas_shutdown (int ) ;
 int venus_shutdown_no_tz (struct venus_core*) ;

int venus_shutdown(struct venus_core *core)
{
 int ret;

 if (core->use_tz)
  ret = qcom_scm_pas_shutdown(VENUS_PAS_ID);
 else
  ret = venus_shutdown_no_tz(core);

 return ret;
}
