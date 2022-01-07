
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdisp_ctx {int dummy; } ;


 int __bdisp_job_abort (struct bdisp_ctx*) ;

__attribute__((used)) static void bdisp_job_abort(void *priv)
{
 __bdisp_job_abort((struct bdisp_ctx *)priv);
}
