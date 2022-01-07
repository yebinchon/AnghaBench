
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv_stream {int s_flags; } ;
struct ivtv {struct ivtv_stream* streams; } ;


 int CX2341X_MBOX_MAX_DATA ;
 int IVTV_DEBUG_HI_IRQ (char*) ;
 size_t IVTV_ENC_STREAM_TYPE_VBI ;
 int IVTV_F_S_DMA_PENDING ;
 int IVTV_F_S_PIO_PENDING ;
 scalar_t__ ivtv_use_pio (struct ivtv_stream*) ;
 int set_bit (int ,int *) ;
 int stream_enc_dma_append (struct ivtv_stream*,int *) ;

__attribute__((used)) static void ivtv_irq_enc_vbi_cap(struct ivtv *itv)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 struct ivtv_stream *s;

 IVTV_DEBUG_HI_IRQ("ENC START VBI CAP\n");
 s = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];

 if (!stream_enc_dma_append(s, data))
  set_bit(ivtv_use_pio(s) ? IVTV_F_S_PIO_PENDING : IVTV_F_S_DMA_PENDING, &s->s_flags);
}
