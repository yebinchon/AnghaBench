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
struct xgbe_prv_data {int /*<<< orphan*/  tstamp_cc; int /*<<< orphan*/  tstamp_tc; int /*<<< orphan*/  tstamp_addend; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_SSIR ; 
 int /*<<< orphan*/  MAC_TSCR ; 
 int /*<<< orphan*/  SNSINC ; 
 int /*<<< orphan*/  SSINC ; 
 int /*<<< orphan*/  TSCFUPDT ; 
 int /*<<< orphan*/  TSCTRLSSR ; 
 int /*<<< orphan*/  TSENA ; 
 int /*<<< orphan*/  TXTSSTSM ; 
 int /*<<< orphan*/  XGBE_TSTAMP_SNSINC ; 
 int /*<<< orphan*/  XGBE_TSTAMP_SSINC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct xgbe_prv_data *pdata,
			      unsigned int mac_tscr)
{
	/* Set one nano-second accuracy */
	FUNC3(mac_tscr, MAC_TSCR, TSCTRLSSR, 1);

	/* Set fine timestamp update */
	FUNC3(mac_tscr, MAC_TSCR, TSCFUPDT, 1);

	/* Overwrite earlier timestamps */
	FUNC3(mac_tscr, MAC_TSCR, TXTSSTSM, 1);

	FUNC1(pdata, MAC_TSCR, mac_tscr);

	/* Exit if timestamping is not enabled */
	if (!FUNC0(mac_tscr, MAC_TSCR, TSENA))
		return 0;

	/* Initialize time registers */
	FUNC2(pdata, MAC_SSIR, SSINC, XGBE_TSTAMP_SSINC);
	FUNC2(pdata, MAC_SSIR, SNSINC, XGBE_TSTAMP_SNSINC);
	FUNC8(pdata, pdata->tstamp_addend);
	FUNC7(pdata, 0, 0);

	/* Initialize the timecounter */
	FUNC6(&pdata->tstamp_tc, &pdata->tstamp_cc,
			 FUNC5(FUNC4()));

	return 0;
}