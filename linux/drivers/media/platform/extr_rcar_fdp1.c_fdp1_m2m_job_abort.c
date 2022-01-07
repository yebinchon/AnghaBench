
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp1_ctx {int aborting; int fdp1; } ;


 int FD1_CTL_SGCMD ;
 int FD1_CTL_SRESET ;
 int FD1_CTL_SRESET_SRST ;
 int dprintk (int ,char*) ;
 int fdp1_write (int ,int ,int ) ;

__attribute__((used)) static void fdp1_m2m_job_abort(void *priv)
{
 struct fdp1_ctx *ctx = priv;

 dprintk(ctx->fdp1, "+\n");


 ctx->aborting = 1;


 fdp1_write(ctx->fdp1, 0, FD1_CTL_SGCMD);
 fdp1_write(ctx->fdp1, FD1_CTL_SRESET_SRST, FD1_CTL_SRESET);
}
