#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ nchan; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 scalar_t__ NCHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TP_TX_ORATE_A ; 
 int /*<<< orphan*/  TP_TX_TRATE_A ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC10(struct adapter *adap, u64 *nic_rate, u64 *ofld_rate)
{
	u32 v;

	v = FUNC9(adap, TP_TX_TRATE_A);
	nic_rate[0] = FUNC8(adap, FUNC4(v));
	nic_rate[1] = FUNC8(adap, FUNC5(v));
	if (adap->params.arch.nchan == NCHAN) {
		nic_rate[2] = FUNC8(adap, FUNC6(v));
		nic_rate[3] = FUNC8(adap, FUNC7(v));
	}

	v = FUNC9(adap, TP_TX_ORATE_A);
	ofld_rate[0] = FUNC8(adap, FUNC0(v));
	ofld_rate[1] = FUNC8(adap, FUNC1(v));
	if (adap->params.arch.nchan == NCHAN) {
		ofld_rate[2] = FUNC8(adap, FUNC2(v));
		ofld_rate[3] = FUNC8(adap, FUNC3(v));
	}
}