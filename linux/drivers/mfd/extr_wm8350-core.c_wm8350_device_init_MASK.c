#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wm8350_platform_data {int (* init ) (struct wm8350*) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_13__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_12__ {int rev_g_coeff; int /*<<< orphan*/  pdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_10__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_8__ {void* max_isink; void* max_dcdc; } ;
struct wm8350 {TYPE_7__ wdt; TYPE_6__ rtc; TYPE_5__ power; TYPE_4__ hwmon; TYPE_3__ gpio; TYPE_2__ codec; int /*<<< orphan*/  dev; scalar_t__ irq_base; int /*<<< orphan*/  auxadc_done; int /*<<< orphan*/  auxadc_mutex; TYPE_1__ pmic; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 unsigned int WM8350_CHIP_REV_MASK ; 
 unsigned int WM8350_CONF_STS_MASK ; 
 unsigned int WM8350_CUST_ID_MASK ; 
 void* WM8350_DCDC_4 ; 
 void* WM8350_DCDC_6 ; 
 int /*<<< orphan*/  WM8350_ID ; 
 scalar_t__ WM8350_IRQ_AUXADC_DATARDY ; 
 void* WM8350_ISINK_A ; 
 void* WM8350_ISINK_B ; 
 int /*<<< orphan*/  WM8350_RESET_ID ; 
 int /*<<< orphan*/  WM8350_REVISION ; 
#define  WM8350_REV_E 131 
#define  WM8350_REV_F 130 
#define  WM8350_REV_G 129 
#define  WM8350_REV_H 128 
 int /*<<< orphan*/  WM8350_SYSTEM_INTERRUPTS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wm8350*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wm8350*) ; 
 int FUNC8 (struct wm8350*) ; 
 int /*<<< orphan*/  wm8350_auxadc_irq ; 
 int /*<<< orphan*/  FUNC9 (struct wm8350*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wm8350*) ; 
 int FUNC11 (struct wm8350*,int,struct wm8350_platform_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

int FUNC13(struct wm8350 *wm8350, int irq,
		       struct wm8350_platform_data *pdata)
{
	int ret;
	unsigned int id1, id2, mask_rev;
	unsigned int cust_id, mode, chip_rev;

	FUNC2(wm8350->dev, wm8350);

	/* get WM8350 revision and config mode */
	ret = FUNC6(wm8350->regmap, WM8350_RESET_ID, &id1);
	if (ret != 0) {
		FUNC0(wm8350->dev, "Failed to read ID: %d\n", ret);
		goto err;
	}

	ret = FUNC6(wm8350->regmap, WM8350_ID, &id2);
	if (ret != 0) {
		FUNC0(wm8350->dev, "Failed to read ID: %d\n", ret);
		goto err;
	}

	ret = FUNC6(wm8350->regmap, WM8350_REVISION, &mask_rev);
	if (ret != 0) {
		FUNC0(wm8350->dev, "Failed to read revision: %d\n", ret);
		goto err;
	}

	if (id1 != 0x6143) {
		FUNC0(wm8350->dev,
			"Device with ID %x is not a WM8350\n", id1);
		ret = -ENODEV;
		goto err;
	}

	mode = (id2 & WM8350_CONF_STS_MASK) >> 10;
	cust_id = id2 & WM8350_CUST_ID_MASK;
	chip_rev = (id2 & WM8350_CHIP_REV_MASK) >> 12;
	FUNC1(wm8350->dev,
		 "CONF_STS %d, CUST_ID %d, MASK_REV %d, CHIP_REV %d\n",
		 mode, cust_id, mask_rev, chip_rev);

	if (cust_id != 0) {
		FUNC0(wm8350->dev, "Unsupported CUST_ID\n");
		ret = -ENODEV;
		goto err;
	}

	switch (mask_rev) {
	case 0:
		wm8350->pmic.max_dcdc = WM8350_DCDC_6;
		wm8350->pmic.max_isink = WM8350_ISINK_B;

		switch (chip_rev) {
		case WM8350_REV_E:
			FUNC1(wm8350->dev, "WM8350 Rev E\n");
			break;
		case WM8350_REV_F:
			FUNC1(wm8350->dev, "WM8350 Rev F\n");
			break;
		case WM8350_REV_G:
			FUNC1(wm8350->dev, "WM8350 Rev G\n");
			wm8350->power.rev_g_coeff = 1;
			break;
		case WM8350_REV_H:
			FUNC1(wm8350->dev, "WM8350 Rev H\n");
			wm8350->power.rev_g_coeff = 1;
			break;
		default:
			/* For safety we refuse to run on unknown hardware */
			FUNC0(wm8350->dev, "Unknown WM8350 CHIP_REV\n");
			ret = -ENODEV;
			goto err;
		}
		break;

	case 1:
		wm8350->pmic.max_dcdc = WM8350_DCDC_4;
		wm8350->pmic.max_isink = WM8350_ISINK_A;

		switch (chip_rev) {
		case 0:
			FUNC1(wm8350->dev, "WM8351 Rev A\n");
			wm8350->power.rev_g_coeff = 1;
			break;

		case 1:
			FUNC1(wm8350->dev, "WM8351 Rev B\n");
			wm8350->power.rev_g_coeff = 1;
			break;

		default:
			FUNC0(wm8350->dev, "Unknown WM8351 CHIP_REV\n");
			ret = -ENODEV;
			goto err;
		}
		break;

	case 2:
		wm8350->pmic.max_dcdc = WM8350_DCDC_6;
		wm8350->pmic.max_isink = WM8350_ISINK_B;

		switch (chip_rev) {
		case 0:
			FUNC1(wm8350->dev, "WM8352 Rev A\n");
			wm8350->power.rev_g_coeff = 1;
			break;

		default:
			FUNC0(wm8350->dev, "Unknown WM8352 CHIP_REV\n");
			ret = -ENODEV;
			goto err;
		}
		break;

	default:
		FUNC0(wm8350->dev, "Unknown MASK_REV\n");
		ret = -ENODEV;
		goto err;
	}

	FUNC5(&wm8350->auxadc_mutex);
	FUNC4(&wm8350->auxadc_done);

	ret = FUNC11(wm8350, irq, pdata);
	if (ret < 0)
		goto err;

	if (wm8350->irq_base) {
		ret = FUNC7(wm8350->irq_base +
					   WM8350_IRQ_AUXADC_DATARDY,
					   NULL, wm8350_auxadc_irq,
					   IRQF_ONESHOT,
					   "auxadc", wm8350);
		if (ret < 0)
			FUNC3(wm8350->dev,
				 "Failed to request AUXADC IRQ: %d\n", ret);
	}

	if (pdata && pdata->init) {
		ret = pdata->init(wm8350);
		if (ret != 0) {
			FUNC0(wm8350->dev, "Platform init() failed: %d\n",
				ret);
			goto err_irq;
		}
	}

	FUNC12(wm8350, WM8350_SYSTEM_INTERRUPTS_MASK, 0x0);

	FUNC9(wm8350, "wm8350-codec",
				   &(wm8350->codec.pdev));
	FUNC9(wm8350, "wm8350-gpio",
				   &(wm8350->gpio.pdev));
	FUNC9(wm8350, "wm8350-hwmon",
				   &(wm8350->hwmon.pdev));
	FUNC9(wm8350, "wm8350-power",
				   &(wm8350->power.pdev));
	FUNC9(wm8350, "wm8350-rtc", &(wm8350->rtc.pdev));
	FUNC9(wm8350, "wm8350-wdt", &(wm8350->wdt.pdev));

	return 0;

err_irq:
	FUNC10(wm8350);
err:
	return ret;
}