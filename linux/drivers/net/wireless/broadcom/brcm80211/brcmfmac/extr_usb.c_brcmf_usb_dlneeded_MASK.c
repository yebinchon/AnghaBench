#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int devid; int chiprev; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; } ;
struct bootrom_id_le {int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chip; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int BRCMF_POSTBOOT_ID ; 
 int /*<<< orphan*/  DL_GETVER ; 
 int /*<<< orphan*/  DL_RESETCFG ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_usbdev_info*,int /*<<< orphan*/ ,struct bootrom_id_le*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(struct brcmf_usbdev_info *devinfo)
{
	struct bootrom_id_le id;
	u32 chipid, chiprev;

	FUNC0(USB, "Enter\n");

	if (devinfo == NULL)
		return false;

	/* Check if firmware downloaded already by querying runtime ID */
	id.chip = FUNC2(0xDEAD);
	FUNC1(devinfo, DL_GETVER, &id, sizeof(id));

	chipid = FUNC3(id.chip);
	chiprev = FUNC3(id.chiprev);

	if ((chipid & 0x4300) == 0x4300)
		FUNC0(USB, "chip %x rev 0x%x\n", chipid, chiprev);
	else
		FUNC0(USB, "chip %d rev 0x%x\n", chipid, chiprev);
	if (chipid == BRCMF_POSTBOOT_ID) {
		FUNC0(USB, "firmware already downloaded\n");
		FUNC1(devinfo, DL_RESETCFG, &id, sizeof(id));
		return false;
	} else {
		devinfo->bus_pub.devid = chipid;
		devinfo->bus_pub.chiprev = chiprev;
	}
	return true;
}