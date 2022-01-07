
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct device {int dummy; } ;


 int ENOENT ;
 union acpi_object* ERR_PTR (int ) ;

__attribute__((used)) static inline union acpi_object *iwl_acpi_get_wifi_pkg(struct device *dev,
             union acpi_object *data,
             int data_size,
             int *tbl_rev)
{
 return ERR_PTR(-ENOENT);
}
