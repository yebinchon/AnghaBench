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
struct TYPE_2__ {int power_delay_ms; } ;
struct mmc_host {int caps; int f_max; int caps2; int fixed_drv_type; int dsr_req; int dsr; TYPE_1__ ios; struct device* parent; int /*<<< orphan*/  pm_caps; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOSYS ; 
 int MMC_CAP2_CD_ACTIVE_HIGH ; 
 int MMC_CAP2_FULL_PWR_CYCLE ; 
 int MMC_CAP2_HS200_1_2V_SDR ; 
 int MMC_CAP2_HS200_1_8V_SDR ; 
 int MMC_CAP2_HS400_1_2V ; 
 int MMC_CAP2_HS400_1_8V ; 
 int MMC_CAP2_HS400_ES ; 
 int MMC_CAP2_NO_MMC ; 
 int MMC_CAP2_NO_SD ; 
 int MMC_CAP2_NO_SDIO ; 
 int MMC_CAP2_NO_WRITE_PROTECT ; 
 int MMC_CAP2_RO_ACTIVE_HIGH ; 
 int MMC_CAP_1_2V_DDR ; 
 int MMC_CAP_1_8V_DDR ; 
 int MMC_CAP_3_3V_DDR ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_8_BIT_DATA ; 
 int MMC_CAP_HW_RESET ; 
 int MMC_CAP_MMC_HIGHSPEED ; 
 int MMC_CAP_NEEDS_POLL ; 
 int MMC_CAP_NONREMOVABLE ; 
 int MMC_CAP_POWER_OFF_CARD ; 
 int MMC_CAP_SDIO_IRQ ; 
 int MMC_CAP_SD_HIGHSPEED ; 
 int MMC_CAP_UHS_DDR50 ; 
 int MMC_CAP_UHS_SDR104 ; 
 int MMC_CAP_UHS_SDR12 ; 
 int MMC_CAP_UHS_SDR25 ; 
 int MMC_CAP_UHS_SDR50 ; 
 int /*<<< orphan*/  MMC_PM_KEEP_POWER ; 
 int /*<<< orphan*/  MMC_PM_WAKE_SDIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (struct device*,char*,int*) ; 
 int FUNC6 (struct mmc_host*,char*,int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC7 (struct mmc_host*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (struct mmc_host*) ; 

int FUNC9(struct mmc_host *host)
{
	struct device *dev = host->parent;
	u32 bus_width, drv_type, cd_debounce_delay_ms;
	int ret;
	bool cd_cap_invert, cd_gpio_invert = false;
	bool ro_cap_invert, ro_gpio_invert = false;

	if (!dev || !FUNC2(dev))
		return 0;

	/* "bus-width" is translated to MMC_CAP_*_BIT_DATA flags */
	if (FUNC5(dev, "bus-width", &bus_width) < 0) {
		FUNC0(host->parent,
			"\"bus-width\" property is missing, assuming 1 bit.\n");
		bus_width = 1;
	}

	switch (bus_width) {
	case 8:
		host->caps |= MMC_CAP_8_BIT_DATA;
		/* fall through - Hosts capable of 8-bit can also do 4 bits */
	case 4:
		host->caps |= MMC_CAP_4_BIT_DATA;
		break;
	case 1:
		break;
	default:
		FUNC1(host->parent,
			"Invalid \"bus-width\" value %u!\n", bus_width);
		return -EINVAL;
	}

	/* f_max is obtained from the optional "max-frequency" property */
	FUNC5(dev, "max-frequency", &host->f_max);

	/*
	 * Configure CD and WP pins. They are both by default active low to
	 * match the SDHCI spec. If GPIOs are provided for CD and / or WP, the
	 * mmc-gpio helpers are used to attach, configure and use them. If
	 * polarity inversion is specified in DT, one of MMC_CAP2_CD_ACTIVE_HIGH
	 * and MMC_CAP2_RO_ACTIVE_HIGH capability-2 flags is set. If the
	 * "broken-cd" property is provided, the MMC_CAP_NEEDS_POLL capability
	 * is set. If the "non-removable" property is found, the
	 * MMC_CAP_NONREMOVABLE capability is set and no card-detection
	 * configuration is performed.
	 */

	/* Parse Card Detection */
	if (FUNC4(dev, "non-removable")) {
		host->caps |= MMC_CAP_NONREMOVABLE;
	} else {
		cd_cap_invert = FUNC4(dev, "cd-inverted");

		if (FUNC5(dev, "cd-debounce-delay-ms",
					     &cd_debounce_delay_ms))
			cd_debounce_delay_ms = 200;

		if (FUNC4(dev, "broken-cd"))
			host->caps |= MMC_CAP_NEEDS_POLL;

		ret = FUNC6(host, "cd", 0, false,
					   cd_debounce_delay_ms * 1000,
					   &cd_gpio_invert);
		if (!ret)
			FUNC3(host->parent, "Got CD GPIO\n");
		else if (ret != -ENOENT && ret != -ENOSYS)
			return ret;

		/*
		 * There are two ways to flag that the CD line is inverted:
		 * through the cd-inverted flag and by the GPIO line itself
		 * being inverted from the GPIO subsystem. This is a leftover
		 * from the times when the GPIO subsystem did not make it
		 * possible to flag a line as inverted.
		 *
		 * If the capability on the host AND the GPIO line are
		 * both inverted, the end result is that the CD line is
		 * not inverted.
		 */
		if (cd_cap_invert ^ cd_gpio_invert)
			host->caps2 |= MMC_CAP2_CD_ACTIVE_HIGH;
	}

	/* Parse Write Protection */
	ro_cap_invert = FUNC4(dev, "wp-inverted");

	ret = FUNC7(host, "wp", 0, 0, &ro_gpio_invert);
	if (!ret)
		FUNC3(host->parent, "Got WP GPIO\n");
	else if (ret != -ENOENT && ret != -ENOSYS)
		return ret;

	if (FUNC4(dev, "disable-wp"))
		host->caps2 |= MMC_CAP2_NO_WRITE_PROTECT;

	/* See the comment on CD inversion above */
	if (ro_cap_invert ^ ro_gpio_invert)
		host->caps2 |= MMC_CAP2_RO_ACTIVE_HIGH;

	if (FUNC4(dev, "cap-sd-highspeed"))
		host->caps |= MMC_CAP_SD_HIGHSPEED;
	if (FUNC4(dev, "cap-mmc-highspeed"))
		host->caps |= MMC_CAP_MMC_HIGHSPEED;
	if (FUNC4(dev, "sd-uhs-sdr12"))
		host->caps |= MMC_CAP_UHS_SDR12;
	if (FUNC4(dev, "sd-uhs-sdr25"))
		host->caps |= MMC_CAP_UHS_SDR25;
	if (FUNC4(dev, "sd-uhs-sdr50"))
		host->caps |= MMC_CAP_UHS_SDR50;
	if (FUNC4(dev, "sd-uhs-sdr104"))
		host->caps |= MMC_CAP_UHS_SDR104;
	if (FUNC4(dev, "sd-uhs-ddr50"))
		host->caps |= MMC_CAP_UHS_DDR50;
	if (FUNC4(dev, "cap-power-off-card"))
		host->caps |= MMC_CAP_POWER_OFF_CARD;
	if (FUNC4(dev, "cap-mmc-hw-reset"))
		host->caps |= MMC_CAP_HW_RESET;
	if (FUNC4(dev, "cap-sdio-irq"))
		host->caps |= MMC_CAP_SDIO_IRQ;
	if (FUNC4(dev, "full-pwr-cycle"))
		host->caps2 |= MMC_CAP2_FULL_PWR_CYCLE;
	if (FUNC4(dev, "keep-power-in-suspend"))
		host->pm_caps |= MMC_PM_KEEP_POWER;
	if (FUNC4(dev, "wakeup-source") ||
	    FUNC4(dev, "enable-sdio-wakeup")) /* legacy */
		host->pm_caps |= MMC_PM_WAKE_SDIO_IRQ;
	if (FUNC4(dev, "mmc-ddr-3_3v"))
		host->caps |= MMC_CAP_3_3V_DDR;
	if (FUNC4(dev, "mmc-ddr-1_8v"))
		host->caps |= MMC_CAP_1_8V_DDR;
	if (FUNC4(dev, "mmc-ddr-1_2v"))
		host->caps |= MMC_CAP_1_2V_DDR;
	if (FUNC4(dev, "mmc-hs200-1_8v"))
		host->caps2 |= MMC_CAP2_HS200_1_8V_SDR;
	if (FUNC4(dev, "mmc-hs200-1_2v"))
		host->caps2 |= MMC_CAP2_HS200_1_2V_SDR;
	if (FUNC4(dev, "mmc-hs400-1_8v"))
		host->caps2 |= MMC_CAP2_HS400_1_8V | MMC_CAP2_HS200_1_8V_SDR;
	if (FUNC4(dev, "mmc-hs400-1_2v"))
		host->caps2 |= MMC_CAP2_HS400_1_2V | MMC_CAP2_HS200_1_2V_SDR;
	if (FUNC4(dev, "mmc-hs400-enhanced-strobe"))
		host->caps2 |= MMC_CAP2_HS400_ES;
	if (FUNC4(dev, "no-sdio"))
		host->caps2 |= MMC_CAP2_NO_SDIO;
	if (FUNC4(dev, "no-sd"))
		host->caps2 |= MMC_CAP2_NO_SD;
	if (FUNC4(dev, "no-mmc"))
		host->caps2 |= MMC_CAP2_NO_MMC;

	/* Must be after "non-removable" check */
	if (FUNC5(dev, "fixed-emmc-driver-type", &drv_type) == 0) {
		if (host->caps & MMC_CAP_NONREMOVABLE)
			host->fixed_drv_type = drv_type;
		else
			FUNC1(host->parent,
				"can't use fixed driver type, media is removable\n");
	}

	host->dsr_req = !FUNC5(dev, "dsr", &host->dsr);
	if (host->dsr_req && (host->dsr & ~0xffff)) {
		FUNC1(host->parent,
			"device tree specified broken value for DSR: 0x%x, ignoring\n",
			host->dsr);
		host->dsr_req = 0;
	}

	FUNC5(dev, "post-power-on-delay-ms",
				 &host->ios.power_delay_ms);

	return FUNC8(host);
}