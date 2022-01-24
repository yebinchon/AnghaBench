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
struct TYPE_6__ {TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
typedef  int u32 ;
struct device {int dummy; } ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ integer; } ;

/* Variables and functions */
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_WRDD_METHOD ; 
 int /*<<< orphan*/  ACPI_WRDD_WIFI_DATA_SIZE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (union acpi_object*) ; 
 int FUNC1 (union acpi_object*) ; 
 union acpi_object* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 union acpi_object* FUNC3 (struct device*,union acpi_object*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*) ; 

int FUNC5(struct device *dev, char *mcc)
{
	union acpi_object *wifi_pkg, *data;
	u32 mcc_val;
	int ret, tbl_rev;

	data = FUNC2(dev, ACPI_WRDD_METHOD);
	if (FUNC0(data))
		return FUNC1(data);

	wifi_pkg = FUNC3(dev, data, ACPI_WRDD_WIFI_DATA_SIZE,
					 &tbl_rev);
	if (FUNC0(wifi_pkg)) {
		ret = FUNC1(wifi_pkg);
		goto out_free;
	}

	if (wifi_pkg->package.elements[1].type != ACPI_TYPE_INTEGER ||
	    tbl_rev != 0) {
		ret = -EINVAL;
		goto out_free;
	}

	mcc_val = wifi_pkg->package.elements[1].integer.value;

	mcc[0] = (mcc_val >> 8) & 0xff;
	mcc[1] = mcc_val & 0xff;
	mcc[2] = '\0';

	ret = 0;
out_free:
	FUNC4(data);
	return ret;
}