
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int dma_addr_t ;
typedef int addr ;


 int upper_32_bits (int ) ;

__attribute__((used)) static inline u8 iwl_get_dma_hi_addr(dma_addr_t addr)
{
 return (sizeof(addr) > sizeof(u32) ? upper_32_bits(addr) : 0) & 0xF;
}
