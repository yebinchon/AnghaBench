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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {unsigned int filter_flags; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 unsigned int SUPPORTED_FILTERS ; 
 int FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				    unsigned int changed_flags,
				    unsigned int *total_flags,
				    u64 multicast)
{
	struct ath10k *ar = hw->priv;
	int ret;

	FUNC2(&ar->conf_mutex);

	changed_flags &= SUPPORTED_FILTERS;
	*total_flags &= SUPPORTED_FILTERS;
	ar->filter_flags = *total_flags;

	ret = FUNC0(ar);
	if (ret)
		FUNC1(ar, "failed to recalc monitor: %d\n", ret);

	FUNC3(&ar->conf_mutex);
}