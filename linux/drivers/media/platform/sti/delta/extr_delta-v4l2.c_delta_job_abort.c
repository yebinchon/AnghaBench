
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_dev {int dev; } ;
struct delta_ctx {int aborting; int name; struct delta_dev* dev; } ;


 int dev_dbg (int ,char*,int ) ;

__attribute__((used)) static void delta_job_abort(void *priv)
{
 struct delta_ctx *ctx = priv;
 struct delta_dev *delta = ctx->dev;

 dev_dbg(delta->dev, "%s aborting job\n", ctx->name);

 ctx->aborting = 1;
}
