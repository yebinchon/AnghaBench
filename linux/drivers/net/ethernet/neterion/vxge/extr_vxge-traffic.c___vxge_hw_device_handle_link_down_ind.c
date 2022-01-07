
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __vxge_hw_device {scalar_t__ link_state; TYPE_1__* uld_callbacks; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_2__ {int (* link_down ) (struct __vxge_hw_device*) ;} ;


 scalar_t__ VXGE_HW_LINK_DOWN ;
 int VXGE_HW_OK ;
 int stub1 (struct __vxge_hw_device*) ;

__attribute__((used)) static enum vxge_hw_status
__vxge_hw_device_handle_link_down_ind(struct __vxge_hw_device *hldev)
{



 if (hldev->link_state == VXGE_HW_LINK_DOWN)
  goto exit;

 hldev->link_state = VXGE_HW_LINK_DOWN;


 if (hldev->uld_callbacks->link_down)
  hldev->uld_callbacks->link_down(hldev);
exit:
 return VXGE_HW_OK;
}
