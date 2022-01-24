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
struct statistics_tx {int dummy; } ;
struct statistics_rx_phy {int dummy; } ;
struct statistics_rx_ht_phy {int dummy; } ;
struct iwl_priv {scalar_t__ rx_statistics_jiffies; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,struct statistics_rx_phy*,struct statistics_rx_ht_phy*,unsigned int) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iwl_priv *priv,
				struct statistics_rx_phy *cur_ofdm,
				struct statistics_rx_ht_phy *cur_ofdm_ht,
				struct statistics_tx *tx,
				unsigned long stamp)
{
	unsigned int msecs;

	if (FUNC4(STATUS_EXIT_PENDING, &priv->status))
		return;

	msecs = FUNC3(stamp - priv->rx_statistics_jiffies);

	/* Only gather statistics and update time stamp when not associated */
	if (!FUNC1(priv))
		return;

	/* Do not check/recover when do not have enough statistics data */
	if (msecs < 99)
		return;

	if (!FUNC2(priv, cur_ofdm, cur_ofdm_ht, msecs))
		FUNC0(priv, false);
}