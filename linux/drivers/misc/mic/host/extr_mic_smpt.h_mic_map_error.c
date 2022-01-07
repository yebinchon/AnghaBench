
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;



__attribute__((used)) static inline bool mic_map_error(dma_addr_t mic_addr)
{
 return !mic_addr;
}
