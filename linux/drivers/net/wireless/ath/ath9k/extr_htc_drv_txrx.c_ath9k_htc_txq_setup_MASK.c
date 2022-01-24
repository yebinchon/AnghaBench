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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int dummy; } ;
struct ath9k_htc_priv {int* hwq_map; struct ath_hw* ah; } ;
typedef  int /*<<< orphan*/  qi ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ATH9K_TX_QUEUE_DATA ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,struct ath9k_tx_queue_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath9k_tx_queue_info*,int /*<<< orphan*/ ,int) ; 

bool FUNC7(struct ath9k_htc_priv *priv, int subtype)
{
	struct ath_hw *ah = priv->ah;
	struct ath_common *common = FUNC2(ah);
	struct ath9k_tx_queue_info qi;
	int qnum;

	FUNC6(&qi, 0, sizeof(qi));
	FUNC1(subtype);

	qnum = FUNC4(priv->ah, ATH9K_TX_QUEUE_DATA, &qi);
	if (qnum == -1)
		return false;

	if (qnum >= FUNC0(priv->hwq_map)) {
		FUNC5(common, "qnum %u out of range, max %zu!\n",
			qnum, FUNC0(priv->hwq_map));
		FUNC3(ah, qnum);
		return false;
	}

	priv->hwq_map[subtype] = qnum;
	return true;
}