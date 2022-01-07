
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* addr_hi; void* addr_lo; } ;
union bfi_addr_u {TYPE_1__ a32; } ;
typedef int u64 ;
typedef void* u32 ;


 scalar_t__ htonl (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void
__bfa_dma_be_addr_set(union bfi_addr_u *dma_addr, u64 pa)
{
 dma_addr->a32.addr_lo = (u32) htonl(pa);
 dma_addr->a32.addr_hi = (u32) htonl(upper_32_bits(pa));
}
