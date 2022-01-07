
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ET_DMA10_MASK ;
 int ET_DMA10_WRAP ;

__attribute__((used)) static inline u32 bump_free_buff_ring(u32 *free_buff_ring, u32 limit)
{
 u32 tmp_free_buff_ring = *free_buff_ring;

 tmp_free_buff_ring++;





 if ((tmp_free_buff_ring & ET_DMA10_MASK) > limit) {
  tmp_free_buff_ring &= ~ET_DMA10_MASK;
  tmp_free_buff_ring ^= ET_DMA10_WRAP;
 }

 tmp_free_buff_ring &= (ET_DMA10_MASK | ET_DMA10_WRAP);
 *free_buff_ring = tmp_free_buff_ring;
 return tmp_free_buff_ring;
}
