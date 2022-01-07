
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long dma_addr_t ;



__attribute__((used)) static inline unsigned long ioc3_map(dma_addr_t addr, unsigned long attr)
{
 return addr;
}
