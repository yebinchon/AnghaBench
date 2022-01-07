
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_ctx {int aborting; } ;


 int coda_dbg (int,struct coda_ctx*,char*) ;

__attribute__((used)) static void coda_job_abort(void *priv)
{
 struct coda_ctx *ctx = priv;

 ctx->aborting = 1;

 coda_dbg(1, ctx, "job abort\n");
}
