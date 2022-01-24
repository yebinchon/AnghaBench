#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  smc; } ;
struct TYPE_4__ {int wait; int errors; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ base; TYPE_2__ op; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_HSMC_NFC_IDR ; 
 int /*<<< orphan*/  ATMEL_HSMC_NFC_IER ; 
 int /*<<< orphan*/  ATMEL_HSMC_NFC_SR ; 
 int ATMEL_HSMC_NFC_SR_AWB ; 
 int ATMEL_HSMC_NFC_SR_DTOE ; 
 int ATMEL_HSMC_NFC_SR_ERRORS ; 
 int ATMEL_HSMC_NFC_SR_NFCASE ; 
 int ATMEL_HSMC_NFC_SR_UNDEF ; 
 unsigned int DEFAULT_TIMEOUT_MS ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct atmel_hsmc_nand_controller *nc, bool poll,
			  unsigned int timeout_ms)
{
	int ret;

	if (!timeout_ms)
		timeout_ms = DEFAULT_TIMEOUT_MS;

	if (poll) {
		u32 status;

		ret = FUNC4(nc->base.smc,
					       ATMEL_HSMC_NFC_SR, status,
					       FUNC0(&nc->op,
								 status),
					       0, timeout_ms * 1000);
	} else {
		FUNC2(&nc->complete);
		FUNC5(nc->base.smc, ATMEL_HSMC_NFC_IER,
			     nc->op.wait | ATMEL_HSMC_NFC_SR_ERRORS);
		ret = FUNC6(&nc->complete,
						FUNC3(timeout_ms));
		if (!ret)
			ret = -ETIMEDOUT;
		else
			ret = 0;

		FUNC5(nc->base.smc, ATMEL_HSMC_NFC_IDR, 0xffffffff);
	}

	if (nc->op.errors & ATMEL_HSMC_NFC_SR_DTOE) {
		FUNC1(nc->base.dev, "Waiting NAND R/B Timeout\n");
		ret = -ETIMEDOUT;
	}

	if (nc->op.errors & ATMEL_HSMC_NFC_SR_UNDEF) {
		FUNC1(nc->base.dev, "Access to an undefined area\n");
		ret = -EIO;
	}

	if (nc->op.errors & ATMEL_HSMC_NFC_SR_AWB) {
		FUNC1(nc->base.dev, "Access while busy\n");
		ret = -EIO;
	}

	if (nc->op.errors & ATMEL_HSMC_NFC_SR_NFCASE) {
		FUNC1(nc->base.dev, "Wrong access size\n");
		ret = -EIO;
	}

	return ret;
}