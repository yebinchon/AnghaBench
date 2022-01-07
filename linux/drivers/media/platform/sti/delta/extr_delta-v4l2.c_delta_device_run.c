
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_dev {int work_queue; } ;
struct delta_ctx {int run_work; struct delta_dev* dev; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void delta_device_run(void *priv)
{
 struct delta_ctx *ctx = priv;
 struct delta_dev *delta = ctx->dev;

 queue_work(delta->work_queue, &ctx->run_work);
}
