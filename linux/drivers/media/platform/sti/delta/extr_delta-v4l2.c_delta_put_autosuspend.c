
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_dev {int dev; } ;
struct delta_ctx {struct delta_dev* dev; } ;


 int pm_runtime_put_autosuspend (int ) ;

void delta_put_autosuspend(struct delta_ctx *ctx)
{
 struct delta_dev *delta = ctx->dev;

 pm_runtime_put_autosuspend(delta->dev);
}
