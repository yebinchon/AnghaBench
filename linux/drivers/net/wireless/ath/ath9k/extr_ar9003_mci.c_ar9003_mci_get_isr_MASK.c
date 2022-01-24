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
struct ath9k_hw_mci {int rx_msg_intr; int raw_intr; void* cont_status; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;
typedef  enum ath9k_int { ____Placeholder_ath9k_int } ath9k_int ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MCI_CONT_STATUS ; 
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RAW ; 
 int AR_MCI_INTERRUPT_RX_MSG_CONT_INFO ; 
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RX_MSG_RAW ; 
 int ATH9K_INT_MCI ; 
 int /*<<< orphan*/  MCI ; 
 void* FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct ath_hw *ah, enum ath9k_int *masked)
{
	struct ath_common *common = FUNC2(ah);
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
	u32 raw_intr, rx_msg_intr;

	rx_msg_intr = FUNC0(ah, AR_MCI_INTERRUPT_RX_MSG_RAW);
	raw_intr = FUNC0(ah, AR_MCI_INTERRUPT_RAW);

	if ((raw_intr == 0xdeadbeef) || (rx_msg_intr == 0xdeadbeef)) {
		FUNC3(common, MCI,
			"MCI gets 0xdeadbeef during int processing\n");
	} else {
		mci->rx_msg_intr |= rx_msg_intr;
		mci->raw_intr |= raw_intr;
		*masked |= ATH9K_INT_MCI;

		if (rx_msg_intr & AR_MCI_INTERRUPT_RX_MSG_CONT_INFO)
			mci->cont_status = FUNC0(ah, AR_MCI_CONT_STATUS);

		FUNC1(ah, AR_MCI_INTERRUPT_RX_MSG_RAW, rx_msg_intr);
		FUNC1(ah, AR_MCI_INTERRUPT_RAW, raw_intr);
	}
}