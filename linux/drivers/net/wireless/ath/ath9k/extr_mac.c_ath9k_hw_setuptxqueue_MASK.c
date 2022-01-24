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
struct ath_hw {struct ath9k_tx_queue_info* txq; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int tqi_subtype; int tqi_type; int /*<<< orphan*/  tqi_physCompBuf; } ;
typedef  enum ath9k_tx_queue { ____Placeholder_ath9k_tx_queue } ath9k_tx_queue ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_NUM_TX_QUEUES ; 
#define  ATH9K_TX_QUEUE_BEACON 132 
#define  ATH9K_TX_QUEUE_CAB 131 
#define  ATH9K_TX_QUEUE_DATA 130 
 int ATH9K_TX_QUEUE_INACTIVE ; 
#define  ATH9K_TX_QUEUE_PSPOLL 129 
#define  ATH9K_TX_QUEUE_UAPSD 128 
 int /*<<< orphan*/  QUEUE ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int,struct ath9k_tx_queue_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_tx_queue_info*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct ath_hw *ah, enum ath9k_tx_queue type,
			  const struct ath9k_tx_queue_info *qinfo)
{
	struct ath_common *common = FUNC0(ah);
	struct ath9k_tx_queue_info *qi;
	int q;

	switch (type) {
	case ATH9K_TX_QUEUE_BEACON:
		q = ATH9K_NUM_TX_QUEUES - 1;
		break;
	case ATH9K_TX_QUEUE_CAB:
		q = ATH9K_NUM_TX_QUEUES - 2;
		break;
	case ATH9K_TX_QUEUE_PSPOLL:
		q = 1;
		break;
	case ATH9K_TX_QUEUE_UAPSD:
		q = ATH9K_NUM_TX_QUEUES - 3;
		break;
	case ATH9K_TX_QUEUE_DATA:
		q = qinfo->tqi_subtype;
		break;
	default:
		FUNC3(common, "Invalid TX queue type: %u\n", type);
		return -1;
	}

	FUNC2(common, QUEUE, "Setup TX queue: %u\n", q);

	qi = &ah->txq[q];
	if (qi->tqi_type != ATH9K_TX_QUEUE_INACTIVE) {
		FUNC3(common, "TX queue: %u already active\n", q);
		return -1;
	}
	FUNC4(qi, 0, sizeof(struct ath9k_tx_queue_info));
	qi->tqi_type = type;
	qi->tqi_physCompBuf = qinfo->tqi_physCompBuf;
	(void) FUNC1(ah, q, qinfo);

	return q;
}