
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cal_dmaqueue {int active; } ;
struct cal_dev {struct cal_ctx** ctx; } ;
struct cal_ctx {scalar_t__ cur_frm; scalar_t__ next_frm; int slock; struct cal_dmaqueue vidq; } ;
typedef int irqreturn_t ;


 int CAL_HL_IRQSTATUS (int) ;
 int IRQ_HANDLED ;
 int cal_process_buffer_complete (struct cal_ctx*) ;
 int cal_schedule_next_buffer (struct cal_ctx*) ;
 scalar_t__ isportirqset (scalar_t__,int) ;
 int list_empty (int *) ;
 scalar_t__ reg_read (struct cal_dev*,int ) ;
 int reg_write (struct cal_dev*,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t cal_irq(int irq_cal, void *data)
{
 struct cal_dev *dev = (struct cal_dev *)data;
 struct cal_ctx *ctx;
 struct cal_dmaqueue *dma_q;
 u32 irqst2, irqst3;


 irqst2 = reg_read(dev, CAL_HL_IRQSTATUS(2));
 if (irqst2) {

  reg_write(dev, CAL_HL_IRQSTATUS(2), irqst2);


  if (isportirqset(irqst2, 1)) {
   ctx = dev->ctx[0];

   if (ctx->cur_frm != ctx->next_frm)
    cal_process_buffer_complete(ctx);
  }

  if (isportirqset(irqst2, 2)) {
   ctx = dev->ctx[1];

   if (ctx->cur_frm != ctx->next_frm)
    cal_process_buffer_complete(ctx);
  }
 }


 irqst3 = reg_read(dev, CAL_HL_IRQSTATUS(3));
 if (irqst3) {

  reg_write(dev, CAL_HL_IRQSTATUS(3), irqst3);


  if (isportirqset(irqst3, 1)) {
   ctx = dev->ctx[0];
   dma_q = &ctx->vidq;

   spin_lock(&ctx->slock);
   if (!list_empty(&dma_q->active) &&
       ctx->cur_frm == ctx->next_frm)
    cal_schedule_next_buffer(ctx);
   spin_unlock(&ctx->slock);
  }

  if (isportirqset(irqst3, 2)) {
   ctx = dev->ctx[1];
   dma_q = &ctx->vidq;

   spin_lock(&ctx->slock);
   if (!list_empty(&dma_q->active) &&
       ctx->cur_frm == ctx->next_frm)
    cal_schedule_next_buffer(ctx);
   spin_unlock(&ctx->slock);
  }
 }

 return IRQ_HANDLED;
}
