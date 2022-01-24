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
typedef  int u8 ;
struct brcmf_sdio_dev {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EBUSY ; 
 int /*<<< orphan*/  PMU_MAX_TRANSITION_DLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SBSDIO_ALP_AVAIL_REQ ; 
 int SBSDIO_AVBITS ; 
 int SBSDIO_FORCE_ALP ; 
 int SBSDIO_FORCE_HW_CLKREQ_OFF ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_CHIPCLKCSR ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_SDIOPULLUP ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void *ctx)
{
	struct brcmf_sdio_dev *sdiodev = ctx;
	int err = 0;
	u8 clkval, clkset;

	/* Try forcing SDIO core to do ALPAvail request only */
	clkset = SBSDIO_FORCE_HW_CLKREQ_OFF | SBSDIO_ALP_AVAIL_REQ;
	FUNC4(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, clkset, &err);
	if (err) {
		FUNC2("error writing for HT off\n");
		return err;
	}

	/* If register supported, wait for ALPAvail and then force ALP */
	/* This may take up to 15 milliseconds */
	clkval = FUNC3(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, NULL);

	if ((clkval & ~SBSDIO_AVBITS) != clkset) {
		FUNC2("ChipClkCSR access: wrote 0x%02x read 0x%02x\n",
			  clkset, clkval);
		return -EACCES;
	}

	FUNC1(((clkval = FUNC3(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
					      NULL)),
		 !FUNC0(clkval)),
		 PMU_MAX_TRANSITION_DLY);

	if (!FUNC0(clkval)) {
		FUNC2("timeout on ALPAV wait, clkval 0x%02x\n",
			  clkval);
		return -EBUSY;
	}

	clkset = SBSDIO_FORCE_HW_CLKREQ_OFF | SBSDIO_FORCE_ALP;
	FUNC4(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, clkset, &err);
	FUNC5(65);

	/* Also, disable the extra SDIO pull-ups */
	FUNC4(sdiodev, SBSDIO_FUNC1_SDIOPULLUP, 0, NULL);

	return 0;
}