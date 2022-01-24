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
typedef  int u32 ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 unsigned int AR5523_SUPPORTED_FILTERS ; 
 int /*<<< orphan*/  UATH_FILTER_OP_INIT ; 
 int /*<<< orphan*/  UATH_FILTER_OP_SET ; 
 int UATH_FILTER_RX_BCAST ; 
 int UATH_FILTER_RX_BEACON ; 
 int UATH_FILTER_RX_MCAST ; 
 int UATH_FILTER_RX_PROM ; 
 int UATH_FILTER_RX_UCAST ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5523*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
				    unsigned int changed_flags,
				    unsigned int *total_flags,
				    u64 multicast)
{
	struct ar5523 *ar = hw->priv;
	u32 filter = 0;

	FUNC0(ar, "configure_filter called\n");
	FUNC3(&ar->mutex);
	FUNC1(ar);

	*total_flags &= AR5523_SUPPORTED_FILTERS;

	/* The filters seems strange. UATH_FILTER_RX_BCAST and
	 * UATH_FILTER_RX_MCAST does not result in those frames being RXed.
	 * The only way I have found to get [mb]cast frames seems to be
	 * to set UATH_FILTER_RX_PROM. */
	filter |= UATH_FILTER_RX_UCAST | UATH_FILTER_RX_MCAST |
		  UATH_FILTER_RX_BCAST | UATH_FILTER_RX_BEACON |
		  UATH_FILTER_RX_PROM;

	FUNC2(ar, 0, UATH_FILTER_OP_INIT);
	FUNC2(ar, filter, UATH_FILTER_OP_SET);

	FUNC4(&ar->mutex);
}