#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct brcmfmac_sdio_pd {int oob_irq_flags; int /*<<< orphan*/  oob_irq_nr; scalar_t__ oob_irq_supported; } ;
struct brcmf_sdio_dev {int irq_en; int oob_irq_requested; int irq_wake; int sd_irq_requested; TYPE_4__* func1; TYPE_4__* func2; TYPE_3__* bus_if; int /*<<< orphan*/  irq_en_lock; TYPE_2__* settings; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {scalar_t__ chip; } ;
struct TYPE_7__ {struct brcmfmac_sdio_pd sdio; } ;
struct TYPE_8__ {TYPE_1__ bus; } ;

/* Variables and functions */
 scalar_t__ BRCM_CC_43362_CHIP_ID ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  SBSDIO_GPIO_EN ; 
 int /*<<< orphan*/  SBSDIO_GPIO_OUT ; 
 int /*<<< orphan*/  SBSDIO_GPIO_SELECT ; 
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  SDIO_CCCR_BRCM_SEPINT ; 
 int SDIO_CCCR_BRCM_SEPINT_ACT_HI ; 
 int SDIO_CCCR_BRCM_SEPINT_MASK ; 
 int SDIO_CCCR_BRCM_SEPINT_OE ; 
 int SDIO_CCCR_IEN_FUNC0 ; 
 int SDIO_CCCR_IEN_FUNC1 ; 
 int SDIO_CCCR_IEN_FUNC2 ; 
 int /*<<< orphan*/  SDIO_CCCR_IENx ; 
 int /*<<< orphan*/  SI_ENUM_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  brcmf_sdiod_dummy_irqhandler ; 
 int FUNC3 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  brcmf_sdiod_ib_irqhandler ; 
 int /*<<< orphan*/  brcmf_sdiod_oob_irqhandler ; 
 int FUNC5 (struct brcmf_sdio_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmf_sdio_dev*,int,int,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct brcmf_sdio_dev *sdiodev)
{
	struct brcmfmac_sdio_pd *pdata;
	int ret = 0;
	u8 data;
	u32 addr, gpiocontrol;

	pdata = &sdiodev->settings->bus.sdio;
	if (pdata->oob_irq_supported) {
		FUNC1(SDIO, "Enter, register OOB IRQ %d\n",
			  pdata->oob_irq_nr);
		FUNC13(&sdiodev->irq_en_lock);
		sdiodev->irq_en = true;

		ret = FUNC9(pdata->oob_irq_nr, brcmf_sdiod_oob_irqhandler,
				  pdata->oob_irq_flags, "brcmf_oob_intr",
				  &sdiodev->func1->dev);
		if (ret != 0) {
			FUNC2("request_irq failed %d\n", ret);
			return ret;
		}
		sdiodev->oob_irq_requested = true;

		ret = FUNC8(pdata->oob_irq_nr);
		if (ret != 0) {
			FUNC2("enable_irq_wake failed %d\n", ret);
			return ret;
		}
		sdiodev->irq_wake = true;

		FUNC10(sdiodev->func1);

		if (sdiodev->bus_if->chip == BRCM_CC_43362_CHIP_ID) {
			/* assign GPIO to SDIO core */
			addr = FUNC0(SI_ENUM_BASE, gpiocontrol);
			gpiocontrol = FUNC5(sdiodev, addr, &ret);
			gpiocontrol |= 0x2;
			FUNC7(sdiodev, addr, gpiocontrol, &ret);

			FUNC6(sdiodev, SBSDIO_GPIO_SELECT,
					   0xf, &ret);
			FUNC6(sdiodev, SBSDIO_GPIO_OUT, 0, &ret);
			FUNC6(sdiodev, SBSDIO_GPIO_EN, 0x2, &ret);
		}

		/* must configure SDIO_CCCR_IENx to enable irq */
		data = FUNC3(sdiodev, SDIO_CCCR_IENx, &ret);
		data |= SDIO_CCCR_IEN_FUNC1 | SDIO_CCCR_IEN_FUNC2 |
			SDIO_CCCR_IEN_FUNC0;
		FUNC4(sdiodev, SDIO_CCCR_IENx, data, &ret);

		/* redirect, configure and enable io for interrupt signal */
		data = SDIO_CCCR_BRCM_SEPINT_MASK | SDIO_CCCR_BRCM_SEPINT_OE;
		if (pdata->oob_irq_flags & IRQF_TRIGGER_HIGH)
			data |= SDIO_CCCR_BRCM_SEPINT_ACT_HI;
		FUNC4(sdiodev, SDIO_CCCR_BRCM_SEPINT,
				     data, &ret);
		FUNC12(sdiodev->func1);
	} else {
		FUNC1(SDIO, "Entering\n");
		FUNC10(sdiodev->func1);
		FUNC11(sdiodev->func1, brcmf_sdiod_ib_irqhandler);
		FUNC11(sdiodev->func2, brcmf_sdiod_dummy_irqhandler);
		FUNC12(sdiodev->func1);
		sdiodev->sd_irq_requested = true;
	}

	return 0;
}