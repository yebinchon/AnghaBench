
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct __vxge_hw_device {TYPE_1__* common_reg; } ;
struct TYPE_2__ {int titan_general_int_status; } ;


 int readl (int *) ;

void vxge_hw_device_flush_io(struct __vxge_hw_device *hldev)
{
 u32 val32;

 val32 = readl(&hldev->common_reg->titan_general_int_status);
}
