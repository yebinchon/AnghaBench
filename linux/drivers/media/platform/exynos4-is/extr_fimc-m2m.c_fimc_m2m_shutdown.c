
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_dev {int irq_queue; } ;
struct fimc_ctx {struct fimc_dev* fimc_dev; } ;


 int FIMC_CTX_SHUT ;
 int FIMC_SHUTDOWN_TIMEOUT ;
 int fimc_ctx_state_is_set (int ,struct fimc_ctx*) ;
 int fimc_ctx_state_set (int ,struct fimc_ctx*) ;
 int fimc_m2m_pending (struct fimc_dev*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void fimc_m2m_shutdown(struct fimc_ctx *ctx)
{
 struct fimc_dev *fimc = ctx->fimc_dev;

 if (!fimc_m2m_pending(fimc))
  return;

 fimc_ctx_state_set(FIMC_CTX_SHUT, ctx);

 wait_event_timeout(fimc->irq_queue,
   !fimc_ctx_state_is_set(FIMC_CTX_SHUT, ctx),
   FIMC_SHUTDOWN_TIMEOUT);
}
