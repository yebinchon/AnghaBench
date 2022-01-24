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
typedef  int u32 ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int SD_OCR_CCS ; 
 int SD_OCR_S18R ; 
 int SD_OCR_XPC ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 scalar_t__ FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*,int,int*) ; 
 int FUNC5 (struct mmc_host*,int*) ; 
 int FUNC6 (struct mmc_host*,int) ; 
 int FUNC7 (struct mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mmc_host*) ; 

int FUNC10(struct mmc_host *host, u32 ocr, u32 *cid, u32 *rocr)
{
	int err;
	u32 max_current;
	int retries = 10;
	u32 pocr = ocr;

try_again:
	if (!retries) {
		ocr &= ~SD_OCR_S18R;
		FUNC8("%s: Skipping voltage switch\n", FUNC3(host));
	}

	/*
	 * Since we're changing the OCR value, we seem to
	 * need to tell some cards to go back to the idle
	 * state.  We wait 1ms to give cards time to
	 * respond.
	 */
	FUNC0(host);

	/*
	 * If SD_SEND_IF_COND indicates an SD 2.0
	 * compliant card and we should set bit 30
	 * of the ocr to indicate that we can handle
	 * block-addressed SDHC cards.
	 */
	err = FUNC6(host, ocr);
	if (!err)
		ocr |= SD_OCR_CCS;

	/*
	 * If the host supports one of UHS-I modes, request the card
	 * to switch to 1.8V signaling level. If the card has failed
	 * repeatedly to switch however, skip this.
	 */
	if (retries && FUNC2(host))
		ocr |= SD_OCR_S18R;

	/*
	 * If the host can supply more than 150mA at current voltage,
	 * XPC should be set to 1.
	 */
	max_current = FUNC9(host);
	if (max_current > 150)
		ocr |= SD_OCR_XPC;

	err = FUNC4(host, ocr, rocr);
	if (err)
		return err;

	/*
	 * In case CCS and S18A in the response is set, start Signal Voltage
	 * Switch procedure. SPI mode doesn't support CMD11.
	 */
	if (!FUNC1(host) && rocr &&
	   ((*rocr & 0x41000000) == 0x41000000)) {
		err = FUNC7(host, pocr);
		if (err == -EAGAIN) {
			retries--;
			goto try_again;
		} else if (err) {
			retries = 0;
			goto try_again;
		}
	}

	err = FUNC5(host, cid);
	return err;
}