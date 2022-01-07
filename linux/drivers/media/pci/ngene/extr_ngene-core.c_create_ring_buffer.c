
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct SRingBufferDescriptor {int MemSize; int NumBuffers; void* PAHead; struct SBufferHeader* Head; } ;
struct TYPE_2__ {void* Next; } ;
struct SBufferHeader {TYPE_1__ ngeneBuffer; struct SBufferHeader* Next; } ;
typedef void* dma_addr_t ;


 int ENOMEM ;
 int SIZEOF_SBufferHeader ;
 struct SBufferHeader* pci_alloc_consistent (struct pci_dev*,int,void**) ;

__attribute__((used)) static int create_ring_buffer(struct pci_dev *pci_dev,
         struct SRingBufferDescriptor *descr, u32 NumBuffers)
{
 dma_addr_t tmp;
 struct SBufferHeader *Head;
 u32 i;
 u32 MemSize = SIZEOF_SBufferHeader * NumBuffers;
 u64 PARingBufferHead;
 u64 PARingBufferCur;
 u64 PARingBufferNext;
 struct SBufferHeader *Cur, *Next;

 descr->Head = ((void*)0);
 descr->MemSize = 0;
 descr->PAHead = 0;
 descr->NumBuffers = 0;

 if (MemSize < 4096)
  MemSize = 4096;

 Head = pci_alloc_consistent(pci_dev, MemSize, &tmp);
 PARingBufferHead = tmp;

 if (!Head)
  return -ENOMEM;

 PARingBufferCur = PARingBufferHead;
 Cur = Head;

 for (i = 0; i < NumBuffers - 1; i++) {
  Next = (struct SBufferHeader *)
   (((u8 *) Cur) + SIZEOF_SBufferHeader);
  PARingBufferNext = PARingBufferCur + SIZEOF_SBufferHeader;
  Cur->Next = Next;
  Cur->ngeneBuffer.Next = PARingBufferNext;
  Cur = Next;
  PARingBufferCur = PARingBufferNext;
 }

 Cur->Next = Head;
 Cur->ngeneBuffer.Next = PARingBufferHead;

 descr->Head = Head;
 descr->MemSize = MemSize;
 descr->PAHead = PARingBufferHead;
 descr->NumBuffers = NumBuffers;

 return 0;
}
