
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; union acpi_object* elements; } ;
struct TYPE_4__ {int value; void* type; } ;
union acpi_object {TYPE_2__ package; int type; TYPE_1__ integer; } ;
struct hns_mac_cb {int mac_id; TYPE_3__* dsaf_dev; } ;
struct TYPE_6__ {int dev; } ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_HANDLE (int ) ;
 void* ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;
 int ENOTSUPP ;
 int HNS_OP_SERDES_LP_FUNC ;
 union acpi_object* acpi_evaluate_dsm (int ,int *,int ,int ,union acpi_object*) ;
 int dev_warn (int ,char*,int) ;
 int hns_dsaf_acpi_dsm_guid ;

__attribute__((used)) static int
hns_mac_config_sds_loopback_acpi(struct hns_mac_cb *mac_cb, bool en)
{
 union acpi_object *obj;
 union acpi_object obj_args[3], argv4;

 obj_args[0].integer.type = ACPI_TYPE_INTEGER;
 obj_args[0].integer.value = mac_cb->mac_id;
 obj_args[1].integer.type = ACPI_TYPE_INTEGER;
 obj_args[1].integer.value = !!en;

 argv4.type = ACPI_TYPE_PACKAGE;
 argv4.package.count = 2;
 argv4.package.elements = obj_args;

 obj = acpi_evaluate_dsm(ACPI_HANDLE(mac_cb->dsaf_dev->dev),
    &hns_dsaf_acpi_dsm_guid, 0,
    HNS_OP_SERDES_LP_FUNC, &argv4);
 if (!obj) {
  dev_warn(mac_cb->dsaf_dev->dev, "set port%d serdes lp fail!",
    mac_cb->mac_id);

  return -ENOTSUPP;
 }

 ACPI_FREE(obj);

 return 0;
}
