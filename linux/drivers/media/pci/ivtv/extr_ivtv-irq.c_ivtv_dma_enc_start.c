
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bytesused; } ;
struct ivtv_stream {size_t sg_pending_size; scalar_t__ type; scalar_t__ buffers; int sg_processing_size; int pending_pts; int dma_pts; int pending_backup; int dma_backup; int pending_offset; int dma_offset; scalar_t__ sg_processed; TYPE_1__* sg_pending; int sg_processing; int dma_xfer_cnt; int name; int s_flags; TYPE_2__ q_predma; int q_dma; struct ivtv* itv; } ;
struct ivtv_sg_host_element {int dummy; } ;
struct ivtv {scalar_t__ cur_pio_stream; scalar_t__ cur_dma_stream; int i_flags; scalar_t__ dma_retries; struct ivtv_stream* streams; } ;
struct TYPE_3__ {int size; } ;


 int IVTV_DEBUG_HI_DMA (char*,char*,...) ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_MPG ;
 size_t IVTV_ENC_STREAM_TYPE_VBI ;
 int IVTV_F_I_DMA ;
 int IVTV_F_I_HAVE_WORK ;
 int IVTV_F_I_PIO ;
 int IVTV_F_I_WORK_HANDLER_PIO ;
 int IVTV_F_S_DMA_HAS_VBI ;
 int clear_bit (int ,int *) ;
 int ivtv_dma_enc_start_xfer (struct ivtv_stream*) ;
 int ivtv_queue_move (struct ivtv_stream*,TYPE_2__*,int *,int *,scalar_t__) ;
 scalar_t__ ivtv_use_dma (struct ivtv_stream*) ;
 scalar_t__ ivtv_use_pio (struct ivtv_stream*) ;
 int memcpy (int ,TYPE_1__*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ivtv_dma_enc_start(struct ivtv_stream *s)
{
 struct ivtv *itv = s->itv;
 struct ivtv_stream *s_vbi = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
 int i;

 IVTV_DEBUG_HI_DMA("start %s for %s\n", ivtv_use_dma(s) ? "DMA" : "PIO", s->name);

 if (s->q_predma.bytesused)
  ivtv_queue_move(s, &s->q_predma, ((void*)0), &s->q_dma, s->q_predma.bytesused);

 if (ivtv_use_dma(s))
  s->sg_pending[s->sg_pending_size - 1].size += 256;
 clear_bit(IVTV_F_S_DMA_HAS_VBI, &s->s_flags);
 if (s->type == IVTV_ENC_STREAM_TYPE_MPG && s_vbi->sg_pending_size &&
   s->sg_pending_size + s_vbi->sg_pending_size <= s->buffers) {
  ivtv_queue_move(s_vbi, &s_vbi->q_predma, ((void*)0), &s_vbi->q_dma, s_vbi->q_predma.bytesused);
  if (ivtv_use_dma(s_vbi))
   s_vbi->sg_pending[s_vbi->sg_pending_size - 1].size += 256;
  for (i = 0; i < s_vbi->sg_pending_size; i++) {
   s->sg_pending[s->sg_pending_size++] = s_vbi->sg_pending[i];
  }
  s_vbi->dma_offset = s_vbi->pending_offset;
  s_vbi->sg_pending_size = 0;
  s_vbi->dma_xfer_cnt++;
  set_bit(IVTV_F_S_DMA_HAS_VBI, &s->s_flags);
  IVTV_DEBUG_HI_DMA("include DMA for %s\n", s_vbi->name);
 }

 s->dma_xfer_cnt++;
 memcpy(s->sg_processing, s->sg_pending, sizeof(struct ivtv_sg_host_element) * s->sg_pending_size);
 s->sg_processing_size = s->sg_pending_size;
 s->sg_pending_size = 0;
 s->sg_processed = 0;
 s->dma_offset = s->pending_offset;
 s->dma_backup = s->pending_backup;
 s->dma_pts = s->pending_pts;

 if (ivtv_use_pio(s)) {
  set_bit(IVTV_F_I_WORK_HANDLER_PIO, &itv->i_flags);
  set_bit(IVTV_F_I_HAVE_WORK, &itv->i_flags);
  set_bit(IVTV_F_I_PIO, &itv->i_flags);
  itv->cur_pio_stream = s->type;
 }
 else {
  itv->dma_retries = 0;
  ivtv_dma_enc_start_xfer(s);
  set_bit(IVTV_F_I_DMA, &itv->i_flags);
  itv->cur_dma_stream = s->type;
 }
}
