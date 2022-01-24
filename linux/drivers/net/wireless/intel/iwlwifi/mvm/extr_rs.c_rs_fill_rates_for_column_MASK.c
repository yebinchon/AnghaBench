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
typedef  int /*<<< orphan*/  u8 ;
struct rs_rate {int index; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int LINK_QUAL_MAX_RETRY_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rs_rate*) ; 
 int FUNC2 (struct iwl_lq_sta*,struct rs_rate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rs_rate*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct rs_rate*) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm,
				     struct iwl_lq_sta *lq_sta,
				     struct rs_rate *rate,
				     __le32 *rs_table, int *rs_table_index,
				     int num_rates, int num_retries,
				     u8 valid_tx_ant, bool toggle_ant)
{
	int i, j;
	__le32 ucode_rate;
	bool bottom_reached = false;
	int prev_rate_idx = rate->index;
	int end = LINK_QUAL_MAX_RETRY_NUM;
	int index = *rs_table_index;

	for (i = 0; i < num_rates && index < end; i++) {
		for (j = 0; j < num_retries && index < end; j++, index++) {
			ucode_rate = FUNC0(FUNC4(mvm,
									 rate));
			rs_table[index] = ucode_rate;
			if (toggle_ant)
				FUNC3(valid_tx_ant, rate);
		}

		prev_rate_idx = rate->index;
		bottom_reached = FUNC2(lq_sta, rate);
		if (bottom_reached && !FUNC1(rate))
			break;
	}

	if (!bottom_reached && !FUNC1(rate))
		rate->index = prev_rate_idx;

	*rs_table_index = index;
}