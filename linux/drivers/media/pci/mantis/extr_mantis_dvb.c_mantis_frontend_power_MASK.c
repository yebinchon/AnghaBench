#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mantis_pci {struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {int /*<<< orphan*/  power; } ;
typedef  enum mantis_power { ____Placeholder_mantis_power } mantis_power ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
#define  POWER_OFF 129 
#define  POWER_ON 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct mantis_pci *mantis, enum mantis_power power)
{
	struct mantis_hwconfig *config = mantis->hwconfig;

	switch (power) {
	case POWER_ON:
		FUNC0(MANTIS_DEBUG, 1, "Power ON");
		FUNC1(mantis, config->power, POWER_ON);
		FUNC2(100);
		FUNC1(mantis, config->power, POWER_ON);
		FUNC2(100);
		break;

	case POWER_OFF:
		FUNC0(MANTIS_DEBUG, 1, "Power OFF");
		FUNC1(mantis, config->power, POWER_OFF);
		FUNC2(100);
		break;

	default:
		FUNC0(MANTIS_DEBUG, 1, "Unknown state <%02x>", power);
		return -1;
	}

	return 0;
}