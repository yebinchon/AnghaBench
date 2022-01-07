
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ package; } ;
struct device {int dummy; } ;


 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ ACPI_WIFI_DOMAIN ;
 int EINVAL ;
 int ENOENT ;
 union acpi_object* ERR_PTR (int ) ;
 int IWL_DEBUG_DEV_RADIO (struct device*,char*) ;
 scalar_t__ WARN_ON_ONCE (int) ;

union acpi_object *iwl_acpi_get_wifi_pkg(struct device *dev,
      union acpi_object *data,
      int data_size, int *tbl_rev)
{
 int i;
 union acpi_object *wifi_pkg;






 if (WARN_ON_ONCE(data_size < 2))
  return ERR_PTR(-EINVAL);







 if (data->type != ACPI_TYPE_PACKAGE ||
     data->package.count < 2 ||
     data->package.elements[0].type != ACPI_TYPE_INTEGER ||
     data->package.elements[0].integer.value > 1) {
  IWL_DEBUG_DEV_RADIO(dev, "Unsupported packages structure\n");
  return ERR_PTR(-EINVAL);
 }

 *tbl_rev = data->package.elements[0].integer.value;


 for (i = 1; i < data->package.count; i++) {
  union acpi_object *domain;

  wifi_pkg = &data->package.elements[i];


  if (wifi_pkg->type != ACPI_TYPE_PACKAGE ||
      wifi_pkg->package.count != data_size)
   continue;

  domain = &wifi_pkg->package.elements[0];
  if (domain->type == ACPI_TYPE_INTEGER &&
      domain->integer.value == ACPI_WIFI_DOMAIN)
   goto found;
 }

 return ERR_PTR(-ENOENT);

found:
 return wifi_pkg;
}
