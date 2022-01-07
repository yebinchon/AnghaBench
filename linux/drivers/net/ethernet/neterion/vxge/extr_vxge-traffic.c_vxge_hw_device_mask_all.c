
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct __vxge_hw_device {TYPE_1__* common_reg; } ;
struct TYPE_2__ {int titan_mask_all_int; } ;


 int VXGE_HW_TITAN_MASK_ALL_INT_ALARM ;
 int VXGE_HW_TITAN_MASK_ALL_INT_TRAFFIC ;
 int __vxge_hw_pio_mem_write32_upper (int ,int *) ;
 scalar_t__ vxge_bVALn (int,int ,int) ;

void vxge_hw_device_mask_all(struct __vxge_hw_device *hldev)
{
 u64 val64;

 val64 = VXGE_HW_TITAN_MASK_ALL_INT_ALARM |
  VXGE_HW_TITAN_MASK_ALL_INT_TRAFFIC;

 __vxge_hw_pio_mem_write32_upper((u32)vxge_bVALn(val64, 0, 32),
    &hldev->common_reg->titan_mask_all_int);
}
