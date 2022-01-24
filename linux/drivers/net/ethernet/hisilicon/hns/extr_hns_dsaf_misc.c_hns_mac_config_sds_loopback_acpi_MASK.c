#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; union acpi_object* elements; } ;
struct TYPE_4__ {int value; void* type; } ;
union acpi_object {TYPE_2__ package; int /*<<< orphan*/  type; TYPE_1__ integer; } ;
struct hns_mac_cb {int mac_id; TYPE_3__* dsaf_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  HNS_OP_SERDES_LP_FUNC ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union acpi_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  hns_dsaf_acpi_dsm_guid ; 

__attribute__((used)) static int
FUNC4(struct hns_mac_cb *mac_cb, bool en)
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

	obj = FUNC2(FUNC1(mac_cb->dsaf_dev->dev),
				&hns_dsaf_acpi_dsm_guid, 0,
				HNS_OP_SERDES_LP_FUNC, &argv4);
	if (!obj) {
		FUNC3(mac_cb->dsaf_dev->dev, "set port%d serdes lp fail!",
			 mac_cb->mac_id);

		return -ENOTSUPP;
	}

	FUNC0(obj);

	return 0;
}