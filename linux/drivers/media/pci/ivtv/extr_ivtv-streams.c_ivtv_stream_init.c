
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ivtv_stream {int type; int buf_size; int buffers; int q_io; int q_predma; int q_dma; int q_full; int q_free; int sg_handle; int waitq; int qlock; int dma; int caps; int name; struct ivtv* itv; } ;
struct TYPE_3__ {int* kilobytes; } ;
struct ivtv {int* stream_buf_size; TYPE_1__ options; struct ivtv_stream* streams; } ;
struct TYPE_4__ {int dma; scalar_t__ pio; int v4l2_caps; int name; } ;


 int IVTV_DMA_UNMAPPED ;
 int PCI_DMA_NONE ;
 int init_waitqueue_head (int *) ;
 int ivtv_queue_init (int *) ;
 TYPE_2__* ivtv_stream_info ;
 int memset (struct ivtv_stream*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ivtv_stream_init(struct ivtv *itv, int type)
{
 struct ivtv_stream *s = &itv->streams[type];


 memset(s, 0, sizeof(*s));


 s->itv = itv;
 s->type = type;
 s->name = ivtv_stream_info[type].name;
 s->caps = ivtv_stream_info[type].v4l2_caps;

 if (ivtv_stream_info[type].pio)
  s->dma = PCI_DMA_NONE;
 else
  s->dma = ivtv_stream_info[type].dma;
 s->buf_size = itv->stream_buf_size[type];
 if (s->buf_size)
  s->buffers = (itv->options.kilobytes[type] * 1024 + s->buf_size - 1) / s->buf_size;
 spin_lock_init(&s->qlock);
 init_waitqueue_head(&s->waitq);
 s->sg_handle = IVTV_DMA_UNMAPPED;
 ivtv_queue_init(&s->q_free);
 ivtv_queue_init(&s->q_full);
 ivtv_queue_init(&s->q_dma);
 ivtv_queue_init(&s->q_predma);
 ivtv_queue_init(&s->q_io);
}
