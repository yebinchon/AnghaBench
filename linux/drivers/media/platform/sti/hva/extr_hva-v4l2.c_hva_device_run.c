
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_dev {int work_queue; } ;
struct hva_ctx {int run_work; } ;


 struct hva_dev* ctx_to_hdev (struct hva_ctx*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void hva_device_run(void *priv)
{
 struct hva_ctx *ctx = priv;
 struct hva_dev *hva = ctx_to_hdev(ctx);

 queue_work(hva->work_queue, &ctx->run_work);
}
