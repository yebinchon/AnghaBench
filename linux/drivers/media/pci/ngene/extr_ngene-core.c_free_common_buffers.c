
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ngene_channel {int TSRingBuffer; int RingBuffer; int TSIdleBuffer; } ;
struct ngene {int PAFWInterfaceBuffer; scalar_t__ FWInterfaceBuffer; int pci_dev; int PAOverflowBuffer; scalar_t__ OverflowBuffer; struct ngene_channel* channel; } ;


 size_t MAX_STREAM ;
 int OVERFLOW_BUFFER_SIZE ;
 size_t STREAM_VIDEOIN1 ;
 int free_idlebuffer (struct ngene*,int *,int *) ;
 int free_ringbuffer (struct ngene*,int *) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;

__attribute__((used)) static void free_common_buffers(struct ngene *dev)
{
 u32 i;
 struct ngene_channel *chan;

 for (i = STREAM_VIDEOIN1; i < MAX_STREAM; i++) {
  chan = &dev->channel[i];
  free_idlebuffer(dev, &chan->TSIdleBuffer, &chan->TSRingBuffer);
  free_ringbuffer(dev, &chan->RingBuffer);
  free_ringbuffer(dev, &chan->TSRingBuffer);
 }

 if (dev->OverflowBuffer)
  pci_free_consistent(dev->pci_dev,
        OVERFLOW_BUFFER_SIZE,
        dev->OverflowBuffer, dev->PAOverflowBuffer);

 if (dev->FWInterfaceBuffer)
  pci_free_consistent(dev->pci_dev,
        4096,
        dev->FWInterfaceBuffer,
        dev->PAFWInterfaceBuffer);
}
