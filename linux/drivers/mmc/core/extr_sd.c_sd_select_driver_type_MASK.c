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
typedef  int u8 ;
struct TYPE_2__ {int sd3_drv_type; int /*<<< orphan*/  uhs_max_dtr; } ;
struct mmc_card {int drive_strength; int /*<<< orphan*/  host; TYPE_1__ sw_caps; } ;

/* Variables and functions */
 int SD_DRIVER_TYPE_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mmc_card*,int,int,int,int*) ; 
 int FUNC2 (struct mmc_card*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mmc_card *card, u8 *status)
{
	int card_drv_type, drive_strength, drv_type;
	int err;

	card->drive_strength = 0;

	card_drv_type = card->sw_caps.sd3_drv_type | SD_DRIVER_TYPE_B;

	drive_strength = FUNC2(card,
						   card->sw_caps.uhs_max_dtr,
						   card_drv_type, &drv_type);

	if (drive_strength) {
		err = FUNC1(card, 1, 2, drive_strength, status);
		if (err)
			return err;
		if ((status[15] & 0xF) != drive_strength) {
			FUNC4("%s: Problem setting drive strength!\n",
				FUNC0(card->host));
			return 0;
		}
		card->drive_strength = drive_strength;
	}

	if (drv_type)
		FUNC3(card->host, drv_type);

	return 0;
}