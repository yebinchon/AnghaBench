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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  ba_filter; scalar_t__ rx_filter; } ;
struct ar9170 {unsigned int rx_filter_caps; unsigned int filter_state; scalar_t__ cur_mc_hash; int sniffer_enabled; int /*<<< orphan*/  mutex; TYPE_1__ fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_RX_FILTER_BAD ; 
 int /*<<< orphan*/  CARL9170_RX_FILTER_CTL_OTHER ; 
 int /*<<< orphan*/  CARL9170_RX_FILTER_CTL_PSPOLL ; 
 int /*<<< orphan*/  CARL9170_RX_FILTER_DECRY_FAIL ; 
 int /*<<< orphan*/  CARL9170_RX_FILTER_OTHER_RA ; 
 unsigned int FIF_ALLMULTI ; 
 unsigned int FIF_CONTROL ; 
 unsigned int FIF_FCSFAIL ; 
 unsigned int FIF_OTHER_BSS ; 
 unsigned int FIF_PLCPFAIL ; 
 unsigned int FIF_PSPOLL ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
					 unsigned int changed_flags,
					 unsigned int *new_flags,
					 u64 multicast)
{
	struct ar9170 *ar = hw->priv;

	/* mask supported flags */
	*new_flags &= FIF_ALLMULTI | ar->rx_filter_caps;

	if (!FUNC0(ar))
		return;

	FUNC5(&ar->mutex);

	ar->filter_state = *new_flags;
	/*
	 * We can support more by setting the sniffer bit and
	 * then checking the error flags, later.
	 */

	if (*new_flags & FIF_ALLMULTI)
		multicast = ~0ULL;

	if (multicast != ar->cur_mc_hash)
		FUNC1(FUNC4(ar, multicast));

	if (changed_flags & FIF_OTHER_BSS) {
		ar->sniffer_enabled = !!(*new_flags & FIF_OTHER_BSS);

		FUNC1(FUNC3(ar));
	}

	if (ar->fw.rx_filter && changed_flags & ar->rx_filter_caps) {
		u32 rx_filter = 0;

		if (!ar->fw.ba_filter)
			rx_filter |= CARL9170_RX_FILTER_CTL_OTHER;

		if (!(*new_flags & (FIF_FCSFAIL | FIF_PLCPFAIL)))
			rx_filter |= CARL9170_RX_FILTER_BAD;

		if (!(*new_flags & FIF_CONTROL))
			rx_filter |= CARL9170_RX_FILTER_CTL_OTHER;

		if (!(*new_flags & FIF_PSPOLL))
			rx_filter |= CARL9170_RX_FILTER_CTL_PSPOLL;

		if (!(*new_flags & FIF_OTHER_BSS)) {
			rx_filter |= CARL9170_RX_FILTER_OTHER_RA;
			rx_filter |= CARL9170_RX_FILTER_DECRY_FAIL;
		}

		FUNC1(FUNC2(ar, rx_filter));
	}

	FUNC6(&ar->mutex);
}