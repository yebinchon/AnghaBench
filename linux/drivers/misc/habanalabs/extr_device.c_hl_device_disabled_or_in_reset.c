
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int in_reset; scalar_t__ disabled; } ;


 scalar_t__ atomic_read (int *) ;

bool hl_device_disabled_or_in_reset(struct hl_device *hdev)
{
 if ((hdev->disabled) || (atomic_read(&hdev->in_reset)))
  return 1;
 else
  return 0;
}
