
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ngene {int dummy; } ;
struct SRingBufferDescriptor {int NumBuffers; struct SBufferHeader* Head; } ;
struct TYPE_2__ {scalar_t__ Number_of_entries_2; scalar_t__ Address_of_first_entry_2; } ;
struct SBufferHeader {TYPE_1__ ngeneBuffer; int * scList2; int * Buffer2; struct SBufferHeader* Next; } ;


 int free_ringbuffer (struct ngene*,struct SRingBufferDescriptor*) ;

__attribute__((used)) static void free_idlebuffer(struct ngene *dev,
       struct SRingBufferDescriptor *rb,
       struct SRingBufferDescriptor *tb)
{
 int j;
 struct SBufferHeader *Cur = tb->Head;

 if (!rb->Head)
  return;
 free_ringbuffer(dev, rb);
 for (j = 0; j < tb->NumBuffers; j++, Cur = Cur->Next) {
  Cur->Buffer2 = ((void*)0);
  Cur->scList2 = ((void*)0);
  Cur->ngeneBuffer.Address_of_first_entry_2 = 0;
  Cur->ngeneBuffer.Number_of_entries_2 = 0;
 }
}
