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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_hw *hw, u32 tx_ant, u32 rx_ant)
{
	struct ath10k *ar = hw->priv;
	int ret;

	FUNC1(&ar->conf_mutex);
	ret = FUNC0(ar, tx_ant, rx_ant);
	FUNC2(&ar->conf_mutex);
	return ret;
}