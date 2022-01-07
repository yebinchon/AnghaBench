
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_ctx {int aborting; int name; } ;
struct device {int dummy; } ;


 struct device* ctx_to_dev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ) ;

__attribute__((used)) static void hva_job_abort(void *priv)
{
 struct hva_ctx *ctx = priv;
 struct device *dev = ctx_to_dev(ctx);

 dev_dbg(dev, "%s aborting job\n", ctx->name);

 ctx->aborting = 1;
}
