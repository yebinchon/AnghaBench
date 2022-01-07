
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
typedef int u32 ;
struct device {int dummy; } ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ integer; } ;


 int ACPI_ECKV_METHOD ;
 int ACPI_ECKV_WIFI_DATA_SIZE ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int EINVAL ;
 scalar_t__ IS_ERR (union acpi_object*) ;
 int PTR_ERR (union acpi_object*) ;
 union acpi_object* iwl_acpi_get_object (struct device*,int ) ;
 union acpi_object* iwl_acpi_get_wifi_pkg (struct device*,union acpi_object*,int ,int*) ;
 int kfree (union acpi_object*) ;

int iwl_acpi_get_eckv(struct device *dev, u32 *extl_clk)
{
 union acpi_object *wifi_pkg, *data;
 int ret, tbl_rev;

 data = iwl_acpi_get_object(dev, ACPI_ECKV_METHOD);
 if (IS_ERR(data))
  return PTR_ERR(data);

 wifi_pkg = iwl_acpi_get_wifi_pkg(dev, data, ACPI_ECKV_WIFI_DATA_SIZE,
      &tbl_rev);
 if (IS_ERR(wifi_pkg)) {
  ret = PTR_ERR(wifi_pkg);
  goto out_free;
 }

 if (wifi_pkg->package.elements[1].type != ACPI_TYPE_INTEGER ||
     tbl_rev != 0) {
  ret = -EINVAL;
  goto out_free;
 }

 *extl_clk = wifi_pkg->package.elements[1].integer.value;

 ret = 0;

out_free:
 kfree(data);
 return ret;
}
