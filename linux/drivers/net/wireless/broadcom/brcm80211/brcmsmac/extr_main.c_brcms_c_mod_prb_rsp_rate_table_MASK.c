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
typedef  size_t uint ;
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct brcms_c_rateset {size_t count; int* rates; } ;
struct brcms_c_info {int /*<<< orphan*/  hw; TYPE_1__* stf; int /*<<< orphan*/  band; } ;
struct TYPE_2__ {int /*<<< orphan*/  txstreams; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMS_LONG_PREAMBLE ; 
 int BRCMS_RATE_MASK ; 
 int D11_PHY_HDR_LEN ; 
 scalar_t__ M_RT_PRS_DUR_POS ; 
 scalar_t__ M_RT_PRS_PLCP_POS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct brcms_c_info*,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_c_info*,int,size_t,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_c_rateset const*,struct brcms_c_rateset*) ; 
 struct brcms_c_rateset* FUNC5 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_c_rateset*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct brcms_c_info *wlc, uint frame_len)
{
	const struct brcms_c_rateset *rs_dflt;
	struct brcms_c_rateset rs;
	u8 rate;
	u16 entry_ptr;
	u8 plcp[D11_PHY_HDR_LEN];
	u16 dur, sifs;
	uint i;

	sifs = FUNC7(wlc->band);

	rs_dflt = FUNC5(wlc);

	FUNC4(rs_dflt, &rs);
	FUNC6(&rs, wlc->stf->txstreams);

	/*
	 * walk the phy rate table and update MAC core SHM
	 * basic rate table entries
	 */
	for (i = 0; i < rs.count; i++) {
		rate = rs.rates[i] & BRCMS_RATE_MASK;

		entry_ptr = FUNC0(wlc->hw, rate);

		/* Calculate the Probe Response PLCP for the given rate */
		FUNC3(wlc, rate, frame_len, plcp);

		/*
		 * Calculate the duration of the Probe Response
		 * frame plus SIFS for the MAC
		 */
		dur = (u16) FUNC2(wlc, rate,
						BRCMS_LONG_PREAMBLE, frame_len);
		dur += sifs;

		/* Update the SHM Rate Table entry Probe Response values */
		FUNC1(wlc->hw, entry_ptr + M_RT_PRS_PLCP_POS,
			      (u16) (plcp[0] + (plcp[1] << 8)));
		FUNC1(wlc->hw, entry_ptr + M_RT_PRS_PLCP_POS + 2,
			      (u16) (plcp[2] + (plcp[3] << 8)));
		FUNC1(wlc->hw, entry_ptr + M_RT_PRS_DUR_POS, dur);
	}
}