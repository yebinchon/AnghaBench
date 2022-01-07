
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_ctx {int aborting; } ;



__attribute__((used)) static void job_abort(void *priv)
{
 struct vpe_ctx *ctx = priv;


 ctx->aborting = 1;
}
