
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_MOTHERBOARD_RESOURCE_HID ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 scalar_t__ acpi_check_extended_socket_status (struct acpi_device*) ;
 int acpi_device_hid (struct acpi_device*) ;
 int is_extended_socket_device (struct acpi_device*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static acpi_status
acpi_find_extended_socket_device(acpi_handle obj_handle, u32 level,
     void *context, void **return_value)
{
 struct acpi_device *device;
 bool *found = context;
 int result;

 result = acpi_bus_get_device(obj_handle, &device);
 if (result)
  return AE_OK;

 if (strcmp(acpi_device_hid(device), ACPI_MOTHERBOARD_RESOURCE_HID))
  return AE_OK;

 if (!is_extended_socket_device(device))
  return AE_OK;

 if (acpi_check_extended_socket_status(device))
  return AE_OK;

 *found = 1;
 return AE_CTRL_TERMINATE;
}
