
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 unsigned long long ACPI_STA_DEVICE_ENABLED ;
 unsigned long long ACPI_STA_DEVICE_FUNCTIONING ;
 unsigned long long ACPI_STA_DEVICE_PRESENT ;
 unsigned long long ACPI_STA_DEVICE_UI ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int acpi_check_extended_socket_status(struct acpi_device *device)
{
 unsigned long long sta;
 acpi_status status;

 status = acpi_evaluate_integer(device->handle, "_STA", ((void*)0), &sta);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 if (!((sta & ACPI_STA_DEVICE_PRESENT) &&
       (sta & ACPI_STA_DEVICE_ENABLED) &&
       (sta & ACPI_STA_DEVICE_UI) &&
       (sta & ACPI_STA_DEVICE_FUNCTIONING)))
  return -ENODEV;

 return 0;
}
