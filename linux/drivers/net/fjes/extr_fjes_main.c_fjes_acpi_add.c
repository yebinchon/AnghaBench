
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct acpi_device {struct platform_device* driver_data; int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ARRAY_SIZE (int ) ;
 int DRV_NAME ;
 int ENODEV ;
 int METHOD_NAME__CRS ;
 scalar_t__ acpi_check_extended_socket_status (struct acpi_device*) ;
 int acpi_walk_resources (int ,int ,int ,int ) ;
 int fjes_get_acpi_resource ;
 int fjes_resource ;
 int is_extended_socket_device (struct acpi_device*) ;
 struct platform_device* platform_device_register_simple (int ,int ,int ,int ) ;

__attribute__((used)) static int fjes_acpi_add(struct acpi_device *device)
{
 struct platform_device *plat_dev;
 acpi_status status;

 if (!is_extended_socket_device(device))
  return -ENODEV;

 if (acpi_check_extended_socket_status(device))
  return -ENODEV;

 status = acpi_walk_resources(device->handle, METHOD_NAME__CRS,
         fjes_get_acpi_resource, fjes_resource);
 if (ACPI_FAILURE(status))
  return -ENODEV;


 plat_dev = platform_device_register_simple(DRV_NAME, 0, fjes_resource,
         ARRAY_SIZE(fjes_resource));
 device->driver_data = plat_dev;

 return 0;
}
