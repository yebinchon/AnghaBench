
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {scalar_t__ state; } ;


 scalar_t__ VENUS_STATE_DEINIT ;

__attribute__((used)) static bool venus_is_valid_state(struct venus_hfi_device *hdev)
{
 return hdev->state != VENUS_STATE_DEINIT;
}
