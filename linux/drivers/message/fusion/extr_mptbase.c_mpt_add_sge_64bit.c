
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_3__ {void* High; void* Low; } ;
struct TYPE_4__ {void* FlagsLength; TYPE_1__ Address; } ;
typedef TYPE_2__ SGESimple64_t ;


 int MPT_SGE_FLAGS_64_BIT_ADDRESSING ;
 void* cpu_to_le32 (int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void
mpt_add_sge_64bit(void *pAddr, u32 flagslength, dma_addr_t dma_addr)
{
 SGESimple64_t *pSge = (SGESimple64_t *) pAddr;
 pSge->Address.Low = cpu_to_le32
   (lower_32_bits(dma_addr));
 pSge->Address.High = cpu_to_le32
   (upper_32_bits(dma_addr));
 pSge->FlagsLength = cpu_to_le32
   ((flagslength | MPT_SGE_FLAGS_64_BIT_ADDRESSING));
}
