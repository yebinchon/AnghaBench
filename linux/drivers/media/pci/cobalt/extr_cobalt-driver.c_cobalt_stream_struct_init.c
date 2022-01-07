
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt_stream {int is_audio; int is_output; int is_dummy; int dma_channel; int video_channel; int dma_fifo_mask; int adv_irq_mask; scalar_t__ flags; struct cobalt* cobalt; } ;
struct cobalt {int first_fifo_channel; struct cobalt_stream* streams; } ;


 int COBALT_AUDIO_IN_STREAM ;
 int COBALT_AUDIO_OUT_STREAM ;
 int COBALT_HSMA_IN_NODE ;
 int COBALT_HSMA_OUT_NODE ;
 int COBALT_NUM_NODES ;
 int COBALT_NUM_STREAMS ;
 int COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_VI0_INT1_MSK ;
 int COBALT_SYSSTAT_VI0_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_VOHSMA_INT1_MSK ;
 int COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK ;
 int cobalt_info (char*,int,int,int) ;

__attribute__((used)) static void cobalt_stream_struct_init(struct cobalt *cobalt)
{
 int i;

 for (i = 0; i < COBALT_NUM_STREAMS; i++) {
  struct cobalt_stream *s = &cobalt->streams[i];

  s->cobalt = cobalt;
  s->flags = 0;
  s->is_audio = 0;
  s->is_output = 0;
  s->is_dummy = 1;





  if (i <= COBALT_HSMA_IN_NODE) {
   s->dma_channel = i + cobalt->first_fifo_channel;
   s->video_channel = i;
   s->dma_fifo_mask =
    COBALT_SYSSTAT_VI0_LOST_DATA_MSK << (4 * i);
   s->adv_irq_mask =
    COBALT_SYSSTAT_VI0_INT1_MSK << (4 * i);
  } else if (i >= COBALT_AUDIO_IN_STREAM &&
      i <= COBALT_AUDIO_IN_STREAM + 4) {
   unsigned idx = i - COBALT_AUDIO_IN_STREAM;

   s->dma_channel = 6 + idx;
   s->is_audio = 1;
   s->video_channel = idx;
   s->dma_fifo_mask = COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK;
  } else if (i == COBALT_HSMA_OUT_NODE) {
   s->dma_channel = 11;
   s->is_output = 1;
   s->video_channel = 5;
   s->dma_fifo_mask = COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK;
   s->adv_irq_mask = COBALT_SYSSTAT_VOHSMA_INT1_MSK;
  } else if (i == COBALT_AUDIO_OUT_STREAM) {
   s->dma_channel = 12;
   s->is_audio = 1;
   s->is_output = 1;
   s->video_channel = 5;
   s->dma_fifo_mask = COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK;
  } else {

   s->dma_channel = i - COBALT_NUM_NODES;
  }
  cobalt_info("stream #%d -> dma channel #%d <- video channel %d\n",
       i, s->dma_channel, s->video_channel);
 }
}
