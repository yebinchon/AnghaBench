
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct SRingBufferDescriptor {int NumBuffers; struct SBufferHeader* Head; } ;
struct TYPE_2__ {int Number_of_entries_1; int Number_of_entries_2; int Address_of_first_entry_1; int Address_of_first_entry_2; } ;
struct SBufferHeader {struct SBufferHeader* Next; TYPE_1__ ngeneBuffer; int scList1; int scList2; int Buffer1; int Buffer2; } ;



__attribute__((used)) static int FillTSIdleBuffer(struct SRingBufferDescriptor *pIdleBuffer,
       struct SRingBufferDescriptor *pRingBuffer)
{




 u32 n = pRingBuffer->NumBuffers;


 struct SBufferHeader *Cur = pRingBuffer->Head;
 int i;

 for (i = 0; i < n; i++) {
  Cur->Buffer2 = pIdleBuffer->Head->Buffer1;
  Cur->scList2 = pIdleBuffer->Head->scList1;
  Cur->ngeneBuffer.Address_of_first_entry_2 =
   pIdleBuffer->Head->ngeneBuffer.
   Address_of_first_entry_1;
  Cur->ngeneBuffer.Number_of_entries_2 =
   pIdleBuffer->Head->ngeneBuffer.Number_of_entries_1;
  Cur = Cur->Next;
 }
 return 0;
}
