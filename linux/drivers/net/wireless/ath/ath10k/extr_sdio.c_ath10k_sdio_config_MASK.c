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
struct sdio_func {int enable_timeout; int /*<<< orphan*/  card; } ;
struct TYPE_2__ {int /*<<< orphan*/  block_size; } ;
struct ath10k_sdio {TYPE_1__ mbox_info; struct sdio_func* func; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 unsigned char ATH10K_SDIO_DRIVE_DTSX_MASK ; 
 unsigned char ATH10K_SDIO_DRIVE_DTSX_TYPE_D ; 
 int /*<<< orphan*/  CCCR_SDIO_ASYNC_INT_DELAY_ADDRESS ; 
 unsigned char CCCR_SDIO_ASYNC_INT_DELAY_MASK ; 
 unsigned char CCCR_SDIO_DRIVER_STRENGTH_ENABLE_A ; 
 int /*<<< orphan*/  CCCR_SDIO_DRIVER_STRENGTH_ENABLE_ADDR ; 
 unsigned char CCCR_SDIO_DRIVER_STRENGTH_ENABLE_C ; 
 unsigned char CCCR_SDIO_DRIVER_STRENGTH_ENABLE_D ; 
 int /*<<< orphan*/  CCCR_SDIO_IRQ_MODE_REG_SDIO3 ; 
 unsigned char FUNC0 (unsigned char,unsigned char) ; 
 int /*<<< orphan*/  SDIO_CCCR_DRIVE_STRENGTH ; 
 unsigned char SDIO_IRQ_MODE_ASYNC_4BIT_IRQ_SDIO3 ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 struct ath10k_sdio* FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int FUNC8 (struct sdio_func*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC4(ar);
	struct sdio_func *func = ar_sdio->func;
	unsigned char byte, asyncintdelay = 2;
	int ret;

	FUNC1(ar, ATH10K_DBG_BOOT, "sdio configuration\n");

	FUNC6(func);

	byte = 0;
	ret = FUNC2(func->card,
					      SDIO_CCCR_DRIVE_STRENGTH,
					      &byte);

	byte &= ~ATH10K_SDIO_DRIVE_DTSX_MASK;
	byte |= FUNC0(ATH10K_SDIO_DRIVE_DTSX_MASK,
			   ATH10K_SDIO_DRIVE_DTSX_TYPE_D);

	ret = FUNC3(func->card,
					      SDIO_CCCR_DRIVE_STRENGTH,
					      byte);

	byte = 0;
	ret = FUNC2(
		func->card,
		CCCR_SDIO_DRIVER_STRENGTH_ENABLE_ADDR,
		&byte);

	byte |= (CCCR_SDIO_DRIVER_STRENGTH_ENABLE_A |
		 CCCR_SDIO_DRIVER_STRENGTH_ENABLE_C |
		 CCCR_SDIO_DRIVER_STRENGTH_ENABLE_D);

	ret = FUNC3(func->card,
					      CCCR_SDIO_DRIVER_STRENGTH_ENABLE_ADDR,
					      byte);
	if (ret) {
		FUNC5(ar, "failed to enable driver strength: %d\n", ret);
		goto out;
	}

	byte = 0;
	ret = FUNC2(func->card,
					      CCCR_SDIO_IRQ_MODE_REG_SDIO3,
					      &byte);

	byte |= SDIO_IRQ_MODE_ASYNC_4BIT_IRQ_SDIO3;

	ret = FUNC3(func->card,
					      CCCR_SDIO_IRQ_MODE_REG_SDIO3,
					      byte);
	if (ret) {
		FUNC5(ar, "failed to enable 4-bit async irq mode: %d\n",
			    ret);
		goto out;
	}

	byte = 0;
	ret = FUNC2(func->card,
					      CCCR_SDIO_ASYNC_INT_DELAY_ADDRESS,
					      &byte);

	byte &= ~CCCR_SDIO_ASYNC_INT_DELAY_MASK;
	byte |= FUNC0(CCCR_SDIO_ASYNC_INT_DELAY_MASK, asyncintdelay);

	ret = FUNC3(func->card,
					      CCCR_SDIO_ASYNC_INT_DELAY_ADDRESS,
					      byte);

	/* give us some time to enable, in ms */
	func->enable_timeout = 100;

	ret = FUNC8(func, ar_sdio->mbox_info.block_size);
	if (ret) {
		FUNC5(ar, "failed to set sdio block size to %d: %d\n",
			    ar_sdio->mbox_info.block_size, ret);
		goto out;
	}

out:
	FUNC7(func);
	return ret;
}