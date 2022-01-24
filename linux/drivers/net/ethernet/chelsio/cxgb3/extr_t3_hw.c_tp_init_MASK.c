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
struct tp_params {int dummy; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*) ; 
 int /*<<< orphan*/  F_FLSTINITENABLE ; 
 int /*<<< orphan*/  F_TPRESET ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct tp_params const*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int) ; 

__attribute__((used)) static int FUNC7(struct adapter *adap, const struct tp_params *p)
{
	int busy = 0;

	FUNC5(adap, p);
	FUNC2(adap, 3, 0);

	if (FUNC1(adap)) {
		FUNC6(adap, adap->params.vpd.cclk * 1000);
		FUNC4(adap, A_TP_RESET, F_FLSTINITENABLE);
		busy = FUNC3(adap, A_TP_RESET, F_FLSTINITENABLE,
				       0, 1000, 5);
		if (busy)
			FUNC0(adap, "TP initialization timed out\n");
	}

	if (!busy)
		FUNC4(adap, A_TP_RESET, F_TPRESET);
	return busy;
}