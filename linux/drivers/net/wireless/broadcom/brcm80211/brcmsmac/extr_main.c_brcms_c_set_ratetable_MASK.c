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
struct brcms_c_rateset {size_t count; int* rates; } ;
struct brcms_c_info {TYPE_1__* stf; } ;
struct TYPE_2__ {int /*<<< orphan*/  txstreams; } ;

/* Variables and functions */
 int BRCMS_RATE_MASK ; 
 int FUNC0 (struct brcms_c_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_rateset const*,struct brcms_c_rateset*) ; 
 struct brcms_c_rateset* FUNC2 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_c_rateset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_c_info*,int,int) ; 

__attribute__((used)) static void FUNC5(struct brcms_c_info *wlc)
{
	const struct brcms_c_rateset *rs_dflt;
	struct brcms_c_rateset rs;
	u8 rate, basic_rate;
	uint i;

	rs_dflt = FUNC2(wlc);

	FUNC1(rs_dflt, &rs);
	FUNC3(&rs, wlc->stf->txstreams);

	/* walk the phy rate table and update SHM basic rate lookup table */
	for (i = 0; i < rs.count; i++) {
		rate = rs.rates[i] & BRCMS_RATE_MASK;

		/* for a given rate brcms_basic_rate returns the rate at
		 * which a response ACK/CTS should be sent.
		 */
		basic_rate = FUNC0(wlc, rate);
		if (basic_rate == 0)
			/* This should only happen if we are using a
			 * restricted rateset.
			 */
			basic_rate = rs.rates[0] & BRCMS_RATE_MASK;

		FUNC4(wlc, rate, basic_rate);
	}
}