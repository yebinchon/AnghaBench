
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv_stream {scalar_t__ sg_processed; scalar_t__ sg_processing_size; int s_flags; int dma_offset; } ;
struct ivtv {size_t cur_dma_stream; int dma_retries; int dma_waitq; struct ivtv_stream* streams; int i_flags; int dma_timer; int enc_mbox; } ;


 int CX2341X_MBOX_MAX_DATA ;
 int IVTV_DEBUG_HI_IRQ (char*,int,int,size_t) ;
 int IVTV_DEBUG_WARN (char*,int,int ,scalar_t__,scalar_t__,int) ;
 size_t IVTV_ENC_STREAM_TYPE_VBI ;
 int IVTV_F_I_DMA ;
 int IVTV_F_S_DMA_HAS_VBI ;
 int IVTV_MBOX_DMA_END ;
 int IVTV_REG_DMASTATUS ;
 int clear_bit (int ,int *) ;
 int del_timer (int *) ;
 int dma_post (struct ivtv_stream*) ;
 int ivtv_api_get_data (int *,int ,int,int*) ;
 int ivtv_dma_enc_start_xfer (struct ivtv_stream*) ;
 int ivtv_stream_sync_for_cpu (struct ivtv_stream*) ;
 int read_reg (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up (int *) ;
 int write_reg (int,int ) ;

__attribute__((used)) static void ivtv_irq_enc_dma_complete(struct ivtv *itv)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 struct ivtv_stream *s;

 ivtv_api_get_data(&itv->enc_mbox, IVTV_MBOX_DMA_END, 2, data);
 IVTV_DEBUG_HI_IRQ("ENC DMA COMPLETE %x %d (%d)\n", data[0], data[1], itv->cur_dma_stream);

 del_timer(&itv->dma_timer);

 if (itv->cur_dma_stream < 0)
  return;

 s = &itv->streams[itv->cur_dma_stream];
 ivtv_stream_sync_for_cpu(s);

 if (data[0] & 0x18) {
  IVTV_DEBUG_WARN("ENC DMA ERROR %x (offset %08x, xfer %d of %d, retry %d)\n", data[0],
   s->dma_offset, s->sg_processed, s->sg_processing_size, itv->dma_retries);
  write_reg(read_reg(IVTV_REG_DMASTATUS) & 3, IVTV_REG_DMASTATUS);
  if (itv->dma_retries == 3) {

   itv->dma_retries = 0;
   s->sg_processed = s->sg_processing_size;
  }
  else {


   s->sg_processed = 0;
   itv->dma_retries++;
  }
 }
 if (s->sg_processed < s->sg_processing_size) {

  ivtv_dma_enc_start_xfer(s);
  return;
 }
 clear_bit(IVTV_F_I_DMA, &itv->i_flags);
 itv->cur_dma_stream = -1;
 dma_post(s);
 if (test_and_clear_bit(IVTV_F_S_DMA_HAS_VBI, &s->s_flags)) {
  s = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
  dma_post(s);
 }
 s->sg_processing_size = 0;
 s->sg_processed = 0;
 wake_up(&itv->dma_waitq);
}
