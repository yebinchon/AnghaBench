
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fastrpc_invoke_ctx {int nscalars; int * maps; TYPE_2__* args; TYPE_3__* fl; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* sctx; } ;
struct TYPE_5__ {int fd; scalar_t__ length; scalar_t__ reserved; } ;
struct TYPE_4__ {struct device* dev; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,int) ;
 int fastrpc_map_create (TYPE_3__*,int,scalar_t__,int *) ;

__attribute__((used)) static int fastrpc_create_maps(struct fastrpc_invoke_ctx *ctx)
{
 struct device *dev = ctx->fl->sctx->dev;
 int i, err;

 for (i = 0; i < ctx->nscalars; ++i) {

  if (ctx->args[i].reserved)
   return -EINVAL;

  if (ctx->args[i].fd == 0 || ctx->args[i].fd == -1 ||
      ctx->args[i].length == 0)
   continue;

  err = fastrpc_map_create(ctx->fl, ctx->args[i].fd,
      ctx->args[i].length, &ctx->maps[i]);
  if (err) {
   dev_err(dev, "Error Creating map %d\n", err);
   return -EINVAL;
  }

 }
 return 0;
}
