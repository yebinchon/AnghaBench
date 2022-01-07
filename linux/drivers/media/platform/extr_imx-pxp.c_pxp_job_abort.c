
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxp_ctx {int aborting; } ;



__attribute__((used)) static void pxp_job_abort(void *priv)
{
 struct pxp_ctx *ctx = priv;


 ctx->aborting = 1;
}
