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
struct sk_buff {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_tx_ctl {scalar_t__ timestamp; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_HTC_TX_TIMEOUT_INTERVAL ; 
 struct ath9k_htc_tx_ctl* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  XMIT ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline bool FUNC5(struct ath9k_htc_priv *priv, struct sk_buff *skb)
{
	struct ath_common *common = FUNC1(priv->ah);
	struct ath9k_htc_tx_ctl *tx_ctl;

	tx_ctl = FUNC0(skb);

	if (FUNC4(jiffies,
		       tx_ctl->timestamp +
		       FUNC3(ATH9K_HTC_TX_TIMEOUT_INTERVAL))) {
		FUNC2(common, XMIT, "Dropping a packet due to TX timeout\n");
		return true;
	}

	return false;
}