#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  q_tx_num; } ;
struct TYPE_5__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {scalar_t__ ah_version; int ah_mac_version; TYPE_3__* ah_txq; TYPE_2__ ah_capabilities; } ;
struct TYPE_6__ {int tqi_type; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR5K_BSR ; 
 int /*<<< orphan*/  AR5K_CR ; 
 int AR5K_CR_TXD0 ; 
 int AR5K_CR_TXD1 ; 
 int AR5K_CR_TXE0 ; 
 int /*<<< orphan*/  AR5K_DIAG_SW_5211 ; 
 int AR5K_DIAG_SW_CHANNEL_IDLE_HIGH ; 
 int AR5K_QCU_MISC_DCU_EARLY ; 
 int AR5K_QCU_STS_FRMPENDCNT ; 
 int /*<<< orphan*/  AR5K_QCU_TXD ; 
 int /*<<< orphan*/  AR5K_QCU_TXE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  AR5K_QUIET_CTL1 ; 
 int /*<<< orphan*/  AR5K_QUIET_CTL1_NEXT_QT_TSF ; 
 int AR5K_QUIET_CTL1_QT_EN ; 
 int /*<<< orphan*/  AR5K_QUIET_CTL2 ; 
 int /*<<< orphan*/  AR5K_QUIET_CTL2_QT_DUR ; 
 int /*<<< orphan*/  AR5K_QUIET_CTL2_QT_PER ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ath5k_hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath5k_hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int AR5K_SREV_AR2414 ; 
 int /*<<< orphan*/  AR5K_TSF_L32_5211 ; 
#define  AR5K_TX_QUEUE_BEACON 130 
#define  AR5K_TX_QUEUE_CAB 129 
#define  AR5K_TX_QUEUE_DATA 128 
 int AR5K_TX_QUEUE_INACTIVE ; 
 int /*<<< orphan*/  FUNC8 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_DMA ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC9 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct ath5k_hw *ah, unsigned int queue)
{
	unsigned int i = 40;
	u32 tx_queue, pending;

	FUNC0(queue, ah->ah_capabilities.cap_queues.q_tx_num);

	/* Return if queue is declared inactive */
	if (ah->ah_txq[queue].tqi_type == AR5K_TX_QUEUE_INACTIVE)
		return -EINVAL;

	if (ah->ah_version == AR5K_AR5210) {
		tx_queue = FUNC9(ah, AR5K_CR);

		/*
		 * Set by queue type
		 */
		switch (ah->ah_txq[queue].tqi_type) {
		case AR5K_TX_QUEUE_DATA:
			tx_queue |= AR5K_CR_TXD0 & ~AR5K_CR_TXE0;
			break;
		case AR5K_TX_QUEUE_BEACON:
		case AR5K_TX_QUEUE_CAB:
			/* XXX Fix me... */
			tx_queue |= AR5K_CR_TXD1 & ~AR5K_CR_TXD1;
			FUNC10(ah, 0, AR5K_BSR);
			break;
		default:
			return -EINVAL;
		}

		/* Stop queue */
		FUNC10(ah, tx_queue, AR5K_CR);
		FUNC9(ah, AR5K_CR);
	} else {

		/*
		 * Enable DCU early termination to quickly
		 * flush any pending frames from QCU
		 */
		FUNC4(ah, FUNC1(queue),
					AR5K_QCU_MISC_DCU_EARLY);

		/*
		 * Schedule TX disable and wait until queue is empty
		 */
		FUNC7(ah, AR5K_QCU_TXD, queue);

		/* Wait for queue to stop */
		for (i = 1000; i > 0 &&
		(FUNC5(ah, AR5K_QCU_TXE, queue) != 0);
		i--)
			FUNC11(100);

		if (FUNC5(ah, AR5K_QCU_TXE, queue))
			FUNC8(ah, ATH5K_DEBUG_DMA,
				"queue %i didn't stop !\n", queue);

		/* Check for pending frames */
		i = 1000;
		do {
			pending = FUNC9(ah,
				FUNC2(queue)) &
				AR5K_QCU_STS_FRMPENDCNT;
			FUNC11(100);
		} while (--i && pending);

		/* For 2413+ order PCU to drop packets using
		 * QUIET mechanism */
		if (ah->ah_mac_version >= (AR5K_SREV_AR2414 >> 4) &&
		    pending) {
			/* Set periodicity and duration */
			FUNC10(ah,
				FUNC6(100, AR5K_QUIET_CTL2_QT_PER)|
				FUNC6(10, AR5K_QUIET_CTL2_QT_DUR),
				AR5K_QUIET_CTL2);

			/* Enable quiet period for current TSF */
			FUNC10(ah,
				AR5K_QUIET_CTL1_QT_EN |
				FUNC6(FUNC9(ah,
						AR5K_TSF_L32_5211) >> 10,
						AR5K_QUIET_CTL1_NEXT_QT_TSF),
				AR5K_QUIET_CTL1);

			/* Force channel idle high */
			FUNC4(ah, AR5K_DIAG_SW_5211,
					AR5K_DIAG_SW_CHANNEL_IDLE_HIGH);

			/* Wait a while and disable mechanism */
			FUNC11(400);
			FUNC3(ah, AR5K_QUIET_CTL1,
						AR5K_QUIET_CTL1_QT_EN);

			/* Re-check for pending frames */
			i = 100;
			do {
				pending = FUNC9(ah,
					FUNC2(queue)) &
					AR5K_QCU_STS_FRMPENDCNT;
				FUNC11(100);
			} while (--i && pending);

			FUNC3(ah, AR5K_DIAG_SW_5211,
					AR5K_DIAG_SW_CHANNEL_IDLE_HIGH);

			if (pending)
				FUNC8(ah, ATH5K_DEBUG_DMA,
					"quiet mechanism didn't work q:%i !\n",
					queue);
		}

		/*
		 * Disable DCU early termination
		 */
		FUNC3(ah, FUNC1(queue),
					AR5K_QCU_MISC_DCU_EARLY);

		/* Clear register */
		FUNC10(ah, 0, AR5K_QCU_TXD);
		if (pending) {
			FUNC8(ah, ATH5K_DEBUG_DMA,
					"tx dma didn't stop (q:%i, frm:%i) !\n",
					queue, pending);
			return -EBUSY;
		}
	}

	/* TODO: Check for success on 5210 else return error */
	return 0;
}