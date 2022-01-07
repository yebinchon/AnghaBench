
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_mdp_ctx {int work; TYPE_1__* mdp_dev; } ;
struct TYPE_2__ {int job_wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void mtk_mdp_m2m_device_run(void *priv)
{
 struct mtk_mdp_ctx *ctx = priv;

 queue_work(ctx->mdp_dev->job_wq, &ctx->work);
}
