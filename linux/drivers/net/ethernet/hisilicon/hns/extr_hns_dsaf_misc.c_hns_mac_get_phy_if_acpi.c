
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; scalar_t__ type; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ package; } ;
struct hns_mac_cb {scalar_t__ mac_id; int dev; } ;
typedef int phy_interface_t ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_HANDLE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int HNS_OP_GET_PORT_TYPE_FUNC ;
 int PHY_INTERFACE_MODE_NA ;
 int PHY_INTERFACE_MODE_SGMII ;
 int PHY_INTERFACE_MODE_XGMII ;
 union acpi_object* acpi_evaluate_dsm (int ,int *,int ,int ,union acpi_object*) ;
 int dev_dbg (int ,char*,scalar_t__,int ) ;
 int hns_dsaf_acpi_dsm_guid ;

__attribute__((used)) static phy_interface_t hns_mac_get_phy_if_acpi(struct hns_mac_cb *mac_cb)
{
 phy_interface_t phy_if = PHY_INTERFACE_MODE_NA;
 union acpi_object *obj;
 union acpi_object obj_args, argv4;

 obj_args.integer.type = ACPI_TYPE_INTEGER;
 obj_args.integer.value = mac_cb->mac_id;

 argv4.type = ACPI_TYPE_PACKAGE,
 argv4.package.count = 1,
 argv4.package.elements = &obj_args,

 obj = acpi_evaluate_dsm(ACPI_HANDLE(mac_cb->dev),
    &hns_dsaf_acpi_dsm_guid, 0,
    HNS_OP_GET_PORT_TYPE_FUNC, &argv4);

 if (!obj || obj->type != ACPI_TYPE_INTEGER)
  return phy_if;

 phy_if = obj->integer.value ?
  PHY_INTERFACE_MODE_XGMII : PHY_INTERFACE_MODE_SGMII;

 dev_dbg(mac_cb->dev, "mac_id=%d, phy_if=%d\n", mac_cb->mac_id, phy_if);

 ACPI_FREE(obj);

 return phy_if;
}
