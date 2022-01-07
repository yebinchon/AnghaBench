
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_ctx {int dummy; } ;


 int __gsc_m2m_job_abort (struct gsc_ctx*) ;

__attribute__((used)) static void gsc_m2m_job_abort(void *priv)
{
 __gsc_m2m_job_abort((struct gsc_ctx *)priv);
}
