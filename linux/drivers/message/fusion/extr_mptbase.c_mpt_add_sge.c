
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* Address; void* FlagsLength; } ;
typedef TYPE_1__ SGESimple32_t ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void
mpt_add_sge(void *pAddr, u32 flagslength, dma_addr_t dma_addr)
{
 SGESimple32_t *pSge = (SGESimple32_t *) pAddr;
 pSge->FlagsLength = cpu_to_le32(flagslength);
 pSge->Address = cpu_to_le32(dma_addr);
}
