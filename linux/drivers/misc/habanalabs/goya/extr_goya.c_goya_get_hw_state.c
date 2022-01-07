
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;
typedef enum hl_device_hw_state { ____Placeholder_hl_device_hw_state } hl_device_hw_state ;


 int RREG32 (int ) ;
 int mmHW_STATE ;

__attribute__((used)) static enum hl_device_hw_state goya_get_hw_state(struct hl_device *hdev)
{
 return RREG32(mmHW_STATE);
}
