
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int m2m_ctx; int m2m_dev; } ;


 int v4l2_m2m_job_finish (int ,int ) ;

void venus_helper_m2m_job_abort(void *priv)
{
 struct venus_inst *inst = priv;

 v4l2_m2m_job_finish(inst->m2m_dev, inst->m2m_ctx);
}
