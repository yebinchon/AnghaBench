
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ivtv_stream {scalar_t__ type; scalar_t__ sg_processed; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct ivtv {size_t cur_dma_stream; int dma_retries; int dma_waitq; int i_flags; TYPE_1__ dma_timer; struct ivtv_stream* streams; int enc_mbox; } ;


 int CX2341X_MBOX_MAX_DATA ;
 int IVTV_DEBUG_WARN (char*,int,int,int,size_t) ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ;
 int IVTV_F_I_DMA ;
 int IVTV_F_I_UDMA ;
 size_t IVTV_MAX_STREAMS ;
 int IVTV_MBOX_DMA_END ;
 int IVTV_REG_DMASTATUS ;
 int add_timer (TYPE_1__*) ;
 int clear_bit (int ,int *) ;
 int del_timer (TYPE_1__*) ;
 int ivtv_api_get_data (int *,int ,int,int*) ;
 int ivtv_dma_dec_start (struct ivtv_stream*) ;
 int ivtv_dma_enc_start_xfer (struct ivtv_stream*) ;
 int ivtv_udma_start (struct ivtv*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int read_reg (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;
 int write_reg (int,int ) ;

__attribute__((used)) static void ivtv_irq_dma_err(struct ivtv *itv)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 u32 status;

 del_timer(&itv->dma_timer);

 ivtv_api_get_data(&itv->enc_mbox, IVTV_MBOX_DMA_END, 2, data);
 status = read_reg(IVTV_REG_DMASTATUS);
 IVTV_DEBUG_WARN("DMA ERROR %08x %08x %08x %d\n", data[0], data[1],
    status, itv->cur_dma_stream);
 status &= 0x3;
 if (status == 0x3)
  write_reg(status, IVTV_REG_DMASTATUS);

 if (!test_bit(IVTV_F_I_UDMA, &itv->i_flags) &&
     itv->cur_dma_stream >= 0 && itv->cur_dma_stream < IVTV_MAX_STREAMS) {
  struct ivtv_stream *s = &itv->streams[itv->cur_dma_stream];

  if (s->type >= IVTV_DEC_STREAM_TYPE_MPG) {





   ivtv_dma_dec_start(s);
   return;
  } else {
   if ((status & 0x2) == 0) {




    itv->dma_timer.expires =
      jiffies + msecs_to_jiffies(600);
    add_timer(&itv->dma_timer);
    return;
   }

   if (itv->dma_retries < 3) {






    s->sg_processed = 0;
    itv->dma_retries++;
    ivtv_dma_enc_start_xfer(s);
    return;
   }

  }

 }
 if (test_bit(IVTV_F_I_UDMA, &itv->i_flags)) {
  ivtv_udma_start(itv);
  return;
 }
 clear_bit(IVTV_F_I_UDMA, &itv->i_flags);
 clear_bit(IVTV_F_I_DMA, &itv->i_flags);
 itv->cur_dma_stream = -1;
 wake_up(&itv->dma_waitq);
}
