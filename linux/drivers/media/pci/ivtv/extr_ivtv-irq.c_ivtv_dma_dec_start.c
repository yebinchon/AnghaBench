
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bytesused; } ;
struct ivtv_stream {int sg_pending_size; int sg_processing_size; int type; int name; scalar_t__ sg_processed; int sg_pending; int sg_processing; int dma_xfer_cnt; TYPE_1__ q_predma; int q_dma; struct ivtv* itv; } ;
struct ivtv_sg_host_element {int dummy; } ;
struct ivtv {int cur_dma_stream; int i_flags; scalar_t__ dma_retries; } ;


 int IVTV_DEBUG_HI_DMA (char*,int ) ;
 int IVTV_F_I_DMA ;
 int ivtv_dma_dec_start_xfer (struct ivtv_stream*) ;
 int ivtv_queue_move (struct ivtv_stream*,TYPE_1__*,int *,int *,scalar_t__) ;
 int memcpy (int ,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ivtv_dma_dec_start(struct ivtv_stream *s)
{
 struct ivtv *itv = s->itv;

 if (s->q_predma.bytesused)
  ivtv_queue_move(s, &s->q_predma, ((void*)0), &s->q_dma, s->q_predma.bytesused);
 s->dma_xfer_cnt++;
 memcpy(s->sg_processing, s->sg_pending, sizeof(struct ivtv_sg_host_element) * s->sg_pending_size);
 s->sg_processing_size = s->sg_pending_size;
 s->sg_pending_size = 0;
 s->sg_processed = 0;

 IVTV_DEBUG_HI_DMA("start DMA for %s\n", s->name);
 itv->dma_retries = 0;
 ivtv_dma_dec_start_xfer(s);
 set_bit(IVTV_F_I_DMA, &itv->i_flags);
 itv->cur_dma_stream = s->type;
}
