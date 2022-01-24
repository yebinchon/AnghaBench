#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct brcmfmac_sdio_pd {int /*<<< orphan*/  oob_irq_nr; } ;
struct brcmf_sdio_dev {int oob_irq_requested; int sd_irq_requested; int irq_wake; int irq_en; TYPE_3__* func1; TYPE_3__* func2; TYPE_2__* settings; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct brcmfmac_sdio_pd sdio; } ;
struct TYPE_7__ {TYPE_1__ bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  SDIO_CCCR_BRCM_SEPINT ; 
 int /*<<< orphan*/  SDIO_CCCR_IENx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

void FUNC7(struct brcmf_sdio_dev *sdiodev)
{

	FUNC0(SDIO, "Entering oob=%d sd=%d\n",
		  sdiodev->oob_irq_requested,
		  sdiodev->sd_irq_requested);

	if (sdiodev->oob_irq_requested) {
		struct brcmfmac_sdio_pd *pdata;

		pdata = &sdiodev->settings->bus.sdio;
		FUNC4(sdiodev->func1);
		FUNC1(sdiodev, SDIO_CCCR_BRCM_SEPINT, 0, NULL);
		FUNC1(sdiodev, SDIO_CCCR_IENx, 0, NULL);
		FUNC5(sdiodev->func1);

		sdiodev->oob_irq_requested = false;
		if (sdiodev->irq_wake) {
			FUNC2(pdata->oob_irq_nr);
			sdiodev->irq_wake = false;
		}
		FUNC3(pdata->oob_irq_nr, &sdiodev->func1->dev);
		sdiodev->irq_en = false;
		sdiodev->oob_irq_requested = false;
	}

	if (sdiodev->sd_irq_requested) {
		FUNC4(sdiodev->func1);
		FUNC6(sdiodev->func2);
		FUNC6(sdiodev->func1);
		FUNC5(sdiodev->func1);
		sdiodev->sd_irq_requested = false;
	}
}