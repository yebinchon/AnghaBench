
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {int buffers; scalar_t__ dma; int buf_size; int name; int q_free; struct ivtv* itv; int * sg_dma; void* sg_handle; struct ivtv_buffer* sg_processing; struct ivtv_buffer* sg_pending; scalar_t__ sg_processing_size; scalar_t__ sg_pending_size; } ;
struct ivtv_sg_host_element {int dummy; } ;
struct ivtv_sg_element {int dummy; } ;
struct ivtv_buffer {int * buf; void* dma_handle; int list; } ;
struct ivtv {int pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IVTV_DEBUG_INFO (char*,char*,int ,int,int,int) ;
 int IVTV_ERR (char*,int ) ;
 scalar_t__ PCI_DMA_NONE ;
 scalar_t__ PCI_DMA_TODEVICE ;
 int __GFP_NOWARN ;
 int ivtv_buf_sync_for_cpu (struct ivtv_stream*,struct ivtv_buffer*) ;
 int ivtv_enqueue (struct ivtv_stream*,struct ivtv_buffer*,int *) ;
 scalar_t__ ivtv_might_use_dma (struct ivtv_stream*) ;
 int ivtv_stream_free (struct ivtv_stream*) ;
 int ivtv_stream_sync_for_cpu (struct ivtv_stream*) ;
 int kfree (struct ivtv_buffer*) ;
 int * kmalloc (int,int) ;
 void* kzalloc (int,int) ;
 void* pci_map_single (int ,int *,int,scalar_t__) ;

int ivtv_stream_alloc(struct ivtv_stream *s)
{
 struct ivtv *itv = s->itv;
 int SGsize = sizeof(struct ivtv_sg_host_element) * s->buffers;
 int i;

 if (s->buffers == 0)
  return 0;

 IVTV_DEBUG_INFO("Allocate %s%s stream: %d x %d buffers (%dkB total)\n",
  s->dma != PCI_DMA_NONE ? "DMA " : "",
  s->name, s->buffers, s->buf_size, s->buffers * s->buf_size / 1024);

 s->sg_pending = kzalloc(SGsize, GFP_KERNEL|__GFP_NOWARN);
 if (s->sg_pending == ((void*)0)) {
  IVTV_ERR("Could not allocate sg_pending for %s stream\n", s->name);
  return -ENOMEM;
 }
 s->sg_pending_size = 0;

 s->sg_processing = kzalloc(SGsize, GFP_KERNEL|__GFP_NOWARN);
 if (s->sg_processing == ((void*)0)) {
  IVTV_ERR("Could not allocate sg_processing for %s stream\n", s->name);
  kfree(s->sg_pending);
  s->sg_pending = ((void*)0);
  return -ENOMEM;
 }
 s->sg_processing_size = 0;

 s->sg_dma = kzalloc(sizeof(struct ivtv_sg_element),
     GFP_KERNEL|__GFP_NOWARN);
 if (s->sg_dma == ((void*)0)) {
  IVTV_ERR("Could not allocate sg_dma for %s stream\n", s->name);
  kfree(s->sg_pending);
  s->sg_pending = ((void*)0);
  kfree(s->sg_processing);
  s->sg_processing = ((void*)0);
  return -ENOMEM;
 }
 if (ivtv_might_use_dma(s)) {
  s->sg_handle = pci_map_single(itv->pdev, s->sg_dma,
    sizeof(struct ivtv_sg_element), PCI_DMA_TODEVICE);
  ivtv_stream_sync_for_cpu(s);
 }


 for (i = 0; i < s->buffers; i++) {
  struct ivtv_buffer *buf = kzalloc(sizeof(struct ivtv_buffer),
      GFP_KERNEL|__GFP_NOWARN);

  if (buf == ((void*)0))
   break;
  buf->buf = kmalloc(s->buf_size + 256, GFP_KERNEL|__GFP_NOWARN);
  if (buf->buf == ((void*)0)) {
   kfree(buf);
   break;
  }
  INIT_LIST_HEAD(&buf->list);
  if (ivtv_might_use_dma(s)) {
   buf->dma_handle = pci_map_single(s->itv->pdev,
    buf->buf, s->buf_size + 256, s->dma);
   ivtv_buf_sync_for_cpu(s, buf);
  }
  ivtv_enqueue(s, buf, &s->q_free);
 }
 if (i == s->buffers)
  return 0;
 IVTV_ERR("Couldn't allocate buffers for %s stream\n", s->name);
 ivtv_stream_free(s);
 return -ENOMEM;
}
