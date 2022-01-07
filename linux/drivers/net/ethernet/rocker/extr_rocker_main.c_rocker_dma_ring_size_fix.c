
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROCKER_DMA_SIZE_MAX ;
 int ROCKER_DMA_SIZE_MIN ;
 unsigned long max (int ,int ) ;
 int min (int ,int ) ;
 int roundup_pow_of_two (size_t) ;

__attribute__((used)) static unsigned long rocker_dma_ring_size_fix(size_t size)
{
 return max(ROCKER_DMA_SIZE_MIN,
     min(roundup_pow_of_two(size), ROCKER_DMA_SIZE_MAX));
}
