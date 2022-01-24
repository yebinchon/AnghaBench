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
struct rtsx_usb_sdmmc {int dummy; } ;
struct mmc_command {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_SEND_TUNING_BLOCK ; 
 int FUNC0 (struct rtsx_usb_sdmmc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_usb_sdmmc*) ; 
 int FUNC2 (struct rtsx_usb_sdmmc*,struct mmc_command*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_usb_sdmmc*) ; 

__attribute__((used)) static int FUNC4(struct rtsx_usb_sdmmc *host,
		u8 opcode, u8 sample_point)
{
	int err;
	struct mmc_command cmd = {};

	err = FUNC0(host, sample_point, 0);
	if (err)
		return err;

	cmd.opcode = MMC_SEND_TUNING_BLOCK;
	err = FUNC2(host, &cmd, 0x40, NULL, 0, 100);
	if (err) {
		/* Wait till SD DATA IDLE */
		FUNC3(host);
		FUNC1(host);
		return err;
	}

	return 0;
}