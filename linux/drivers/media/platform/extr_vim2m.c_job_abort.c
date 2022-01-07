
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vim2m_ctx {int aborting; } ;



__attribute__((used)) static void job_abort(void *priv)
{
 struct vim2m_ctx *ctx = priv;


 ctx->aborting = 1;
}
