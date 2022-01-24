#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sd3_bus_mode; int /*<<< orphan*/  uhs_max_dtr; } ;
struct mmc_card {TYPE_2__* host; TYPE_1__ sw_caps; int /*<<< orphan*/  quirk_max_rate; int /*<<< orphan*/  sd_bus_speed; } ;
struct TYPE_6__ {int caps; } ;

/* Variables and functions */
 int MMC_CAP_UHS_DDR50 ; 
 int MMC_CAP_UHS_SDR104 ; 
 int MMC_CAP_UHS_SDR12 ; 
 int MMC_CAP_UHS_SDR25 ; 
 int MMC_CAP_UHS_SDR50 ; 
 unsigned int MMC_TIMING_UHS_DDR50 ; 
 unsigned int MMC_TIMING_UHS_SDR104 ; 
 unsigned int MMC_TIMING_UHS_SDR12 ; 
 unsigned int MMC_TIMING_UHS_SDR25 ; 
 unsigned int MMC_TIMING_UHS_SDR50 ; 
 int /*<<< orphan*/  SDIO_CCCR_SPEED ; 
 unsigned char SDIO_SPEED_BSS_MASK ; 
 unsigned int SDIO_SPEED_DDR50 ; 
 unsigned int SDIO_SPEED_SDR104 ; 
 unsigned int SDIO_SPEED_SDR12 ; 
 unsigned int SDIO_SPEED_SDR25 ; 
 unsigned int SDIO_SPEED_SDR50 ; 
 int SD_MODE_UHS_DDR50 ; 
 int SD_MODE_UHS_SDR104 ; 
 int SD_MODE_UHS_SDR12 ; 
 int SD_MODE_UHS_SDR25 ; 
 int SD_MODE_UHS_SDR50 ; 
 int /*<<< orphan*/  UHS_DDR50_BUS_SPEED ; 
 int /*<<< orphan*/  UHS_DDR50_MAX_DTR ; 
 int /*<<< orphan*/  UHS_SDR104_BUS_SPEED ; 
 int /*<<< orphan*/  UHS_SDR104_MAX_DTR ; 
 int /*<<< orphan*/  UHS_SDR12_BUS_SPEED ; 
 int /*<<< orphan*/  UHS_SDR12_MAX_DTR ; 
 int /*<<< orphan*/  UHS_SDR25_BUS_SPEED ; 
 int /*<<< orphan*/  UHS_SDR25_MAX_DTR ; 
 int /*<<< orphan*/  UHS_SDR50_BUS_SPEED ; 
 int /*<<< orphan*/  UHS_SDR50_MAX_DTR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct mmc_card*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct mmc_card *card)
{
	unsigned int bus_speed, timing;
	int err;
	unsigned char speed;
	unsigned int max_rate;

	/*
	 * If the host doesn't support any of the UHS-I modes, fallback on
	 * default speed.
	 */
	if (!FUNC1(card->host))
		return 0;

	bus_speed = SDIO_SPEED_SDR12;
	timing = MMC_TIMING_UHS_SDR12;
	if ((card->host->caps & MMC_CAP_UHS_SDR104) &&
	    (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_SDR104)) {
			bus_speed = SDIO_SPEED_SDR104;
			timing = MMC_TIMING_UHS_SDR104;
			card->sw_caps.uhs_max_dtr = UHS_SDR104_MAX_DTR;
			card->sd_bus_speed = UHS_SDR104_BUS_SPEED;
	} else if ((card->host->caps & MMC_CAP_UHS_DDR50) &&
		   (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_DDR50)) {
			bus_speed = SDIO_SPEED_DDR50;
			timing = MMC_TIMING_UHS_DDR50;
			card->sw_caps.uhs_max_dtr = UHS_DDR50_MAX_DTR;
			card->sd_bus_speed = UHS_DDR50_BUS_SPEED;
	} else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
		    MMC_CAP_UHS_SDR50)) && (card->sw_caps.sd3_bus_mode &
		    SD_MODE_UHS_SDR50)) {
			bus_speed = SDIO_SPEED_SDR50;
			timing = MMC_TIMING_UHS_SDR50;
			card->sw_caps.uhs_max_dtr = UHS_SDR50_MAX_DTR;
			card->sd_bus_speed = UHS_SDR50_BUS_SPEED;
	} else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
		    MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR25)) &&
		   (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_SDR25)) {
			bus_speed = SDIO_SPEED_SDR25;
			timing = MMC_TIMING_UHS_SDR25;
			card->sw_caps.uhs_max_dtr = UHS_SDR25_MAX_DTR;
			card->sd_bus_speed = UHS_SDR25_BUS_SPEED;
	} else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
		    MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR25 |
		    MMC_CAP_UHS_SDR12)) && (card->sw_caps.sd3_bus_mode &
		    SD_MODE_UHS_SDR12)) {
			bus_speed = SDIO_SPEED_SDR12;
			timing = MMC_TIMING_UHS_SDR12;
			card->sw_caps.uhs_max_dtr = UHS_SDR12_MAX_DTR;
			card->sd_bus_speed = UHS_SDR12_BUS_SPEED;
	}

	err = FUNC2(card, 0, 0, SDIO_CCCR_SPEED, 0, &speed);
	if (err)
		return err;

	speed &= ~SDIO_SPEED_BSS_MASK;
	speed |= bus_speed;
	err = FUNC2(card, 1, 0, SDIO_CCCR_SPEED, speed, NULL);
	if (err)
		return err;

	max_rate = FUNC0(card->quirk_max_rate,
				card->sw_caps.uhs_max_dtr);

	if (bus_speed) {
		FUNC4(card->host, timing);
		FUNC3(card->host, max_rate);
	}

	return 0;
}