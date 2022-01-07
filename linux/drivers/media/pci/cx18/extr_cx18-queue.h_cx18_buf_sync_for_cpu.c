
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx18_stream {int dma; int buf_size; TYPE_1__* cx; } ;
struct cx18_buffer {int dma_handle; } ;
struct TYPE_2__ {int pci_dev; } ;


 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;

__attribute__((used)) static inline void cx18_buf_sync_for_cpu(struct cx18_stream *s,
 struct cx18_buffer *buf)
{
 pci_dma_sync_single_for_cpu(s->cx->pci_dev, buf->dma_handle,
    s->buf_size, s->dma);
}
