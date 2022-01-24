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
struct rtsx_pcr {int bier; int card_inserted; int card_removed; int /*<<< orphan*/  lock; int /*<<< orphan*/  carddet_work; scalar_t__ done; int /*<<< orphan*/  trans_result; scalar_t__ dma_error_count; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DELINK_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MS_EXIST ; 
 int MS_INT ; 
 int NEED_COMPLETE_INT ; 
 int /*<<< orphan*/  RTSX_BIPR ; 
 int SD_EXIST ; 
 int SD_INT ; 
 int SD_OC_INT ; 
 int TRANS_FAIL_INT ; 
 int TRANS_OK_INT ; 
 int /*<<< orphan*/  TRANS_RESULT_FAIL ; 
 int /*<<< orphan*/  TRANS_RESULT_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct rtsx_pcr *pcr = dev_id;
	u32 int_reg;

	if (!pcr)
		return IRQ_NONE;

	FUNC6(&pcr->lock);

	int_reg = FUNC3(pcr, RTSX_BIPR);
	/* Clear interrupt flag */
	FUNC4(pcr, RTSX_BIPR, int_reg);
	if ((int_reg & pcr->bier) == 0) {
		FUNC7(&pcr->lock);
		return IRQ_NONE;
	}
	if (int_reg == 0xFFFFFFFF) {
		FUNC7(&pcr->lock);
		return IRQ_HANDLED;
	}

	int_reg &= (pcr->bier | 0x7FFFFF);

	if (int_reg & SD_OC_INT)
		FUNC2(pcr);

	if (int_reg & SD_INT) {
		if (int_reg & SD_EXIST) {
			pcr->card_inserted |= SD_EXIST;
		} else {
			pcr->card_removed |= SD_EXIST;
			pcr->card_inserted &= ~SD_EXIST;
		}
		pcr->dma_error_count = 0;
	}

	if (int_reg & MS_INT) {
		if (int_reg & MS_EXIST) {
			pcr->card_inserted |= MS_EXIST;
		} else {
			pcr->card_removed |= MS_EXIST;
			pcr->card_inserted &= ~MS_EXIST;
		}
	}

	if (int_reg & (NEED_COMPLETE_INT | DELINK_INT)) {
		if (int_reg & (TRANS_FAIL_INT | DELINK_INT)) {
			pcr->trans_result = TRANS_RESULT_FAIL;
			if (pcr->done)
				FUNC0(pcr->done);
		} else if (int_reg & TRANS_OK_INT) {
			pcr->trans_result = TRANS_RESULT_OK;
			if (pcr->done)
				FUNC0(pcr->done);
		}
	}

	if ((pcr->card_inserted || pcr->card_removed) && !(int_reg & SD_OC_INT))
		FUNC5(&pcr->carddet_work,
				FUNC1(200));

	FUNC7(&pcr->lock);
	return IRQ_HANDLED;
}