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
struct vub300_mmc_host {int card_powered; int /*<<< orphan*/  kref; int /*<<< orphan*/  cmd_mutex; int /*<<< orphan*/  udev; int /*<<< orphan*/  interface; } ;
struct mmc_ios {scalar_t__ power_mode; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ MMC_POWER_OFF ; 
 scalar_t__ MMC_POWER_ON ; 
 scalar_t__ MMC_POWER_UP ; 
 int /*<<< orphan*/  SET_SD_POWER ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct vub300_mmc_host*,int /*<<< orphan*/ *,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vub300_mmc_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vub300_delete ; 

__attribute__((used)) static void FUNC11(struct mmc_host *mmc, struct mmc_ios *ios)
{				/* NOT irq */
	struct vub300_mmc_host *vub300 = FUNC5(mmc);
	if (!vub300->interface)
		return;
	FUNC3(&vub300->kref);
	FUNC7(&vub300->cmd_mutex);
	if ((ios->power_mode == MMC_POWER_OFF) && vub300->card_powered) {
		vub300->card_powered = 0;
		FUNC9(vub300->udev, FUNC10(vub300->udev, 0),
				SET_SD_POWER,
				USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				0x0000, 0x0000, NULL, 0, HZ);
		/* must wait for the VUB300 u-proc to boot up */
		FUNC6(600);
	} else if ((ios->power_mode == MMC_POWER_UP) && !vub300->card_powered) {
		FUNC9(vub300->udev, FUNC10(vub300->udev, 0),
				SET_SD_POWER,
				USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				0x0001, 0x0000, NULL, 0, HZ);
		FUNC6(600);
		vub300->card_powered = 1;
	} else if (ios->power_mode == MMC_POWER_ON) {
		u8 *buf = FUNC2(8, GFP_KERNEL);
		if (buf) {
			FUNC0(vub300, buf, ios);
			FUNC1(buf);
		}
	} else {
		/* this should mean no change of state */
	}
	FUNC8(&vub300->cmd_mutex);
	FUNC4(&vub300->kref, vub300_delete);
}