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
struct ath5k_txq_info {int tqi_cw_min; } ;
struct ath5k_hw {scalar_t__ ah_version; int /*<<< orphan*/  ah_retry_short; int /*<<< orphan*/  ah_retry_long; struct ath5k_txq_info* ah_txq; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 int /*<<< orphan*/  AR5K_DCU_RETRY_LMT_RTS ; 
 int /*<<< orphan*/  AR5K_DCU_RETRY_LMT_STA_DATA ; 
 int /*<<< orphan*/  AR5K_DCU_RETRY_LMT_STA_RTS ; 
 int /*<<< orphan*/  AR5K_NODCU_RETRY_LMT ; 
 int AR5K_NODCU_RETRY_LMT_CW_MIN_S ; 
 int /*<<< orphan*/  AR5K_NODCU_RETRY_LMT_LG_RETRY ; 
 int /*<<< orphan*/  AR5K_NODCU_RETRY_LMT_SH_RETRY ; 
 int /*<<< orphan*/  AR5K_NODCU_RETRY_LMT_SLG_RETRY ; 
 int /*<<< orphan*/  AR5K_NODCU_RETRY_LMT_SSH_RETRY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ath5k_hw *ah,
				  unsigned int queue)
{
	/* Single data queue on AR5210 */
	if (ah->ah_version == AR5K_AR5210) {
		struct ath5k_txq_info *tq = &ah->ah_txq[queue];

		if (queue > 0)
			return;

		FUNC2(ah,
			(tq->tqi_cw_min << AR5K_NODCU_RETRY_LMT_CW_MIN_S)
			| FUNC1(ah->ah_retry_long,
				      AR5K_NODCU_RETRY_LMT_SLG_RETRY)
			| FUNC1(ah->ah_retry_short,
				      AR5K_NODCU_RETRY_LMT_SSH_RETRY)
			| FUNC1(ah->ah_retry_long,
				      AR5K_NODCU_RETRY_LMT_LG_RETRY)
			| FUNC1(ah->ah_retry_short,
				      AR5K_NODCU_RETRY_LMT_SH_RETRY),
			AR5K_NODCU_RETRY_LMT);
	/* DCU on AR5211+ */
	} else {
		FUNC2(ah,
			FUNC1(ah->ah_retry_long,
				    AR5K_DCU_RETRY_LMT_RTS)
			| FUNC1(ah->ah_retry_long,
				      AR5K_DCU_RETRY_LMT_STA_RTS)
			| FUNC1(FUNC3(ah->ah_retry_long, ah->ah_retry_short),
				      AR5K_DCU_RETRY_LMT_STA_DATA),
			FUNC0(queue));
	}
}