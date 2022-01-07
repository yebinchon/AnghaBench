
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct __vxge_hw_channel {TYPE_1__* common_reg; } ;
struct TYPE_2__ {int * clr_msix_one_shot_vec; } ;


 int __vxge_hw_pio_mem_write32_upper (int ,int *) ;
 scalar_t__ vxge_bVALn (int ,int ,int) ;
 int vxge_mBIT (int) ;

void vxge_hw_channel_msix_clear(struct __vxge_hw_channel *channel, int msix_id)
{
 __vxge_hw_pio_mem_write32_upper(
  (u32) vxge_bVALn(vxge_mBIT(msix_id >> 2), 0, 32),
  &channel->common_reg->clr_msix_one_shot_vec[msix_id % 4]);
}
