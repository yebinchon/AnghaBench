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
typedef  int u32 ;
struct rs_rate {int index; int ant; int type; int bw; scalar_t__ ldpc; scalar_t__ sgi; scalar_t__ stbc; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int plcp; int plcp_ht_siso; int plcp_ht_mimo2; int plcp_vht_siso; int plcp_vht_mimo2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int IWL_FIRST_CCK_RATE ; 
 int IWL_FIRST_HT_RATE ; 
 int IWL_FIRST_VHT_RATE ; 
 int IWL_LAST_CCK_RATE ; 
 int IWL_LAST_HT_RATE ; 
 int IWL_LAST_VHT_RATE ; 
 int RATE_MCS_ANT_ABC_MSK ; 
 int RATE_MCS_ANT_AB_MSK ; 
 int RATE_MCS_ANT_POS ; 
 int RATE_MCS_CCK_MSK ; 
 int RATE_MCS_HT_MSK ; 
 int RATE_MCS_LDPC_MSK ; 
 int RATE_MCS_SGI_MSK ; 
 int RATE_MCS_STBC_MSK ; 
 int RATE_MCS_VHT_MSK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct rs_rate*) ; 
 scalar_t__ FUNC3 (struct rs_rate*) ; 
 scalar_t__ FUNC4 (struct rs_rate*) ; 
 scalar_t__ FUNC5 (struct rs_rate*) ; 
 scalar_t__ FUNC6 (struct rs_rate*) ; 
 scalar_t__ FUNC7 (struct rs_rate*) ; 
 scalar_t__ FUNC8 (struct rs_rate*) ; 
 scalar_t__ FUNC9 (struct rs_rate*) ; 
 TYPE_1__* iwl_rates ; 

__attribute__((used)) static u32 FUNC10(struct iwl_mvm *mvm,
				  struct rs_rate *rate)
{
	u32 ucode_rate = 0;
	int index = rate->index;

	ucode_rate |= ((rate->ant << RATE_MCS_ANT_POS) &
			 RATE_MCS_ANT_ABC_MSK);

	if (FUNC5(rate)) {
		ucode_rate |= iwl_rates[index].plcp;
		if (index >= IWL_FIRST_CCK_RATE && index <= IWL_LAST_CCK_RATE)
			ucode_rate |= RATE_MCS_CCK_MSK;
		return ucode_rate;
	}

	if (FUNC2(rate)) {
		if (index < IWL_FIRST_HT_RATE || index > IWL_LAST_HT_RATE) {
			FUNC0(mvm, "Invalid HT rate index %d\n", index);
			index = IWL_LAST_HT_RATE;
		}
		ucode_rate |= RATE_MCS_HT_MSK;

		if (FUNC4(rate))
			ucode_rate |= iwl_rates[index].plcp_ht_siso;
		else if (FUNC3(rate))
			ucode_rate |= iwl_rates[index].plcp_ht_mimo2;
		else
			FUNC1(1);
	} else if (FUNC7(rate)) {
		if (index < IWL_FIRST_VHT_RATE || index > IWL_LAST_VHT_RATE) {
			FUNC0(mvm, "Invalid VHT rate index %d\n", index);
			index = IWL_LAST_VHT_RATE;
		}
		ucode_rate |= RATE_MCS_VHT_MSK;
		if (FUNC9(rate))
			ucode_rate |= iwl_rates[index].plcp_vht_siso;
		else if (FUNC8(rate))
			ucode_rate |= iwl_rates[index].plcp_vht_mimo2;
		else
			FUNC1(1);

	} else {
		FUNC0(mvm, "Invalid rate->type %d\n", rate->type);
	}

	if (FUNC6(rate) && rate->stbc) {
		/* To enable STBC we need to set both a flag and ANT_AB */
		ucode_rate |= RATE_MCS_ANT_AB_MSK;
		ucode_rate |= RATE_MCS_STBC_MSK;
	}

	ucode_rate |= rate->bw;
	if (rate->sgi)
		ucode_rate |= RATE_MCS_SGI_MSK;
	if (rate->ldpc)
		ucode_rate |= RATE_MCS_LDPC_MSK;

	return ucode_rate;
}