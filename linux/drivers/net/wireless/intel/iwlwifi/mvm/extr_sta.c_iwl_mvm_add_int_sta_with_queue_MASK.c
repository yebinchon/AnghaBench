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
typedef  int u16 ;
struct iwl_mvm_int_sta {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MAX_TID_COUNT ; 
 int FUNC0 (struct iwl_mvm*,struct iwl_mvm_int_sta*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iwl_mvm *mvm, int macidx,
					  int maccolor,
					  struct iwl_mvm_int_sta *sta,
					  u16 *queue, int fifo)
{
	int ret;

	/* Map queue to fifo - needs to happen before adding station */
	if (!FUNC4(mvm))
		FUNC2(mvm, *queue, sta->sta_id, fifo);

	ret = FUNC0(mvm, sta, NULL, macidx, maccolor);
	if (ret) {
		if (!FUNC4(mvm))
			FUNC1(mvm, NULL, *queue,
					    IWL_MAX_TID_COUNT, 0);
		return ret;
	}

	/*
	 * For 22000 firmware and on we cannot add queue to a station unknown
	 * to firmware so enable queue here - after the station was added
	 */
	if (FUNC4(mvm)) {
		int txq;

		txq = FUNC3(mvm, sta->sta_id);
		if (txq < 0) {
			FUNC5(mvm, sta->sta_id);
			return txq;
		}

		*queue = txq;
	}

	return 0;
}