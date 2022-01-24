#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* default_trigger; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  brightness; int /*<<< orphan*/  name; } ;
struct rtsx_usb_sdmmc {int /*<<< orphan*/  led_work; TYPE_3__ led; int /*<<< orphan*/  led_name; int /*<<< orphan*/  host_mutex; struct platform_device* pdev; struct mmc_host* mmc; struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmc_host* FUNC5 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 char* FUNC7 (struct mmc_host*) ; 
 struct rtsx_usb_sdmmc* FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct rtsx_usb_sdmmc*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_usb_sdmmc*) ; 
 int /*<<< orphan*/  rtsx_usb_led_control ; 
 int /*<<< orphan*/  rtsx_usb_update_led ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct rtsx_ucr* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct rtsx_usb_sdmmc *host;
	struct rtsx_ucr *ucr;
#ifdef RTSX_USB_USE_LEDS_CLASS
	int err;
#endif

	ucr = FUNC15(FUNC14(pdev->dev.parent));
	if (!ucr)
		return -ENXIO;

	FUNC1(&(pdev->dev), ": Realtek USB SD/MMC controller found\n");

	mmc = FUNC5(sizeof(*host), &pdev->dev);
	if (!mmc)
		return -ENOMEM;

	host = FUNC8(mmc);
	host->ucr = ucr;
	host->mmc = mmc;
	host->pdev = pdev;
	FUNC10(pdev, host);

	FUNC9(&host->host_mutex);
	FUNC12(host);
	FUNC11(&pdev->dev);

#ifdef RTSX_USB_USE_LEDS_CLASS
	snprintf(host->led_name, sizeof(host->led_name),
		"%s::", mmc_hostname(mmc));
	host->led.name = host->led_name;
	host->led.brightness = LED_OFF;
	host->led.default_trigger = mmc_hostname(mmc);
	host->led.brightness_set = rtsx_usb_led_control;

	err = led_classdev_register(mmc_dev(mmc), &host->led);
	if (err)
		dev_err(&(pdev->dev),
				"Failed to register LED device: %d\n", err);
	INIT_WORK(&host->led_work, rtsx_usb_update_led);

#endif
	FUNC4(mmc);

	return 0;
}