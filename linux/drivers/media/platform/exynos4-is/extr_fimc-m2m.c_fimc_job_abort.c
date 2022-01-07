
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fimc_m2m_shutdown (void*) ;

__attribute__((used)) static void fimc_job_abort(void *priv)
{
 fimc_m2m_shutdown(priv);
}
