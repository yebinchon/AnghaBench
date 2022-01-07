
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rocker_dma_ring_info {int type; } ;
struct rocker {int dummy; } ;


 int DMA_DESC_CREDITS (int ) ;
 int rocker_write32 (struct rocker const*,int ,scalar_t__) ;

__attribute__((used)) static void rocker_dma_ring_credits_set(const struct rocker *rocker,
     const struct rocker_dma_ring_info *info,
     u32 credits)
{
 if (credits)
  rocker_write32(rocker, DMA_DESC_CREDITS(info->type), credits);
}
