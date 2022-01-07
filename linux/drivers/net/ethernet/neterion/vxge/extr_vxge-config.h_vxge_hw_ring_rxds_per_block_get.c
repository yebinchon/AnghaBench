
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxge_hw_ring_rxd_1 {int dummy; } ;


 int VXGE_HW_BLOCK_SIZE ;

__attribute__((used)) static inline u32 vxge_hw_ring_rxds_per_block_get(u32 buf_mode)
{
 return (u32)((VXGE_HW_BLOCK_SIZE-16) /
  sizeof(struct vxge_hw_ring_rxd_1));
}
