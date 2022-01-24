#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct mmc_card {int type; size_t sd_bus_speed; TYPE_1__ dev; int /*<<< orphan*/  host; int /*<<< orphan*/  rca; } ;

/* Variables and functions */
 size_t FUNC0 (char const* const*) ; 
#define  MMC_TYPE_MMC 136 
#define  MMC_TYPE_SD 135 
#define  MMC_TYPE_SDIO 134 
#define  MMC_TYPE_SD_COMBO 133 
#define  UHS_DDR50_BUS_SPEED 132 
#define  UHS_SDR104_BUS_SPEED 131 
#define  UHS_SDR12_BUS_SPEED 130 
#define  UHS_SDR25_BUS_SPEED 129 
#define  UHS_SDR50_BUS_SPEED 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_card*) ; 
 scalar_t__ FUNC6 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_card*) ; 
 scalar_t__ FUNC8 (struct mmc_card*) ; 
 scalar_t__ FUNC9 (struct mmc_card*) ; 
 scalar_t__ FUNC10 (struct mmc_card*) ; 
 scalar_t__ FUNC11 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC12 (struct mmc_card*) ; 
 scalar_t__ FUNC13 (struct mmc_card*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,char*,char*,char const*,...) ; 

int FUNC18(struct mmc_card *card)
{
	int ret;
	const char *type;
	const char *uhs_bus_speed_mode = "";
	static const char *const uhs_speeds[] = {
		[UHS_SDR12_BUS_SPEED] = "SDR12 ",
		[UHS_SDR25_BUS_SPEED] = "SDR25 ",
		[UHS_SDR50_BUS_SPEED] = "SDR50 ",
		[UHS_SDR104_BUS_SPEED] = "SDR104 ",
		[UHS_DDR50_BUS_SPEED] = "DDR50 ",
	};


	FUNC1(&card->dev, "%s:%04x", FUNC15(card->host), card->rca);

	switch (card->type) {
	case MMC_TYPE_MMC:
		type = "MMC";
		break;
	case MMC_TYPE_SD:
		type = "SD";
		if (FUNC5(card)) {
			if (FUNC7(card))
				type = "SDXC";
			else
				type = "SDHC";
		}
		break;
	case MMC_TYPE_SDIO:
		type = "SDIO";
		break;
	case MMC_TYPE_SD_COMBO:
		type = "SD-combo";
		if (FUNC5(card))
			type = "SDHC-combo";
		break;
	default:
		type = "?";
		break;
	}

	if (FUNC13(card) &&
		(card->sd_bus_speed < FUNC0(uhs_speeds)))
		uhs_bus_speed_mode = uhs_speeds[card->sd_bus_speed];

	if (FUNC14(card->host)) {
		FUNC17("%s: new %s%s%s card on SPI\n",
			FUNC15(card->host),
			FUNC8(card) ? "high speed " : "",
			FUNC6(card) ? "DDR " : "",
			type);
	} else {
		FUNC17("%s: new %s%s%s%s%s%s card at address %04x\n",
			FUNC15(card->host),
			FUNC13(card) ? "ultra high speed " :
			(FUNC8(card) ? "high speed " : ""),
			FUNC10(card) ? "HS400 " :
			(FUNC9(card) ? "HS200 " : ""),
			FUNC11(card) ? "Enhanced strobe " : "",
			FUNC6(card) ? "DDR " : "",
			uhs_bus_speed_mode, type, card->rca);
	}

#ifdef CONFIG_DEBUG_FS
	mmc_add_card_debugfs(card);
#endif
	card->dev.of_node = FUNC16(card->host, 0);

	FUNC3(&card->dev);

	ret = FUNC2(&card->dev);
	if (ret)
		return ret;

	FUNC12(card);

	return 0;
}