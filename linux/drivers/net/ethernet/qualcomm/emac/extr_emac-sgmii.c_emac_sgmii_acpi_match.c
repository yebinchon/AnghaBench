
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgmii_ops {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device_id {char* id; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 int ACPI_HANDLE (struct device*) ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 struct acpi_device_id* acpi_match_device (struct acpi_device_id const*,struct device*) ;
 struct sgmii_ops qdf2400_ops ;
 struct sgmii_ops qdf2432_ops ;

__attribute__((used)) static int emac_sgmii_acpi_match(struct device *dev, void *data)
{
 return 0;
}
