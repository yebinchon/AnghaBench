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
typedef  int /*<<< orphan*/  u8 ;
struct mantis_pci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC1 (struct mantis_pci*,int,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct mantis_pci *mantis)
{
	int err;
	u8 mac_addr[6] = {0};

	err = FUNC1(mantis, 0x08, mac_addr, 6);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1, "ERROR: Mantis EEPROM read error <%d>", err);

		return err;
	}

	FUNC0(MANTIS_ERROR, 0, "    MAC Address=[%pM]\n", mac_addr);

	return 0;
}