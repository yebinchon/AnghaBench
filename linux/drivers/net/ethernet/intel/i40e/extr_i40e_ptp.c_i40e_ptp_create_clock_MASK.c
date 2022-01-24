#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tx_type; int /*<<< orphan*/  rx_filter; } ;
struct TYPE_6__ {int max_adj; int /*<<< orphan*/  enable; int /*<<< orphan*/  settime64; int /*<<< orphan*/  gettimex64; int /*<<< orphan*/  adjtime; int /*<<< orphan*/  adjfreq; scalar_t__ pps; scalar_t__ n_ext_ts; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct i40e_pf {int /*<<< orphan*/  ptp_reset_start; int /*<<< orphan*/  ptp_prev_hw_time; TYPE_2__ tstamp_config; int /*<<< orphan*/  ptp_clock; TYPE_1__* pdev; TYPE_3__ ptp_caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWTSTAMP_FILTER_NONE ; 
 int /*<<< orphan*/  HWTSTAMP_TX_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  i40e_driver_name ; 
 int /*<<< orphan*/  i40e_ptp_adjfreq ; 
 int /*<<< orphan*/  i40e_ptp_adjtime ; 
 int /*<<< orphan*/  i40e_ptp_feature_enable ; 
 int /*<<< orphan*/  i40e_ptp_gettimex ; 
 int /*<<< orphan*/  i40e_ptp_settime ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static long FUNC7(struct i40e_pf *pf)
{
	/* no need to create a clock device if we already have one */
	if (!FUNC1(pf->ptp_clock))
		return 0;

	FUNC6(pf->ptp_caps.name, i40e_driver_name,
		sizeof(pf->ptp_caps.name) - 1);
	pf->ptp_caps.owner = THIS_MODULE;
	pf->ptp_caps.max_adj = 999999999;
	pf->ptp_caps.n_ext_ts = 0;
	pf->ptp_caps.pps = 0;
	pf->ptp_caps.adjfreq = i40e_ptp_adjfreq;
	pf->ptp_caps.adjtime = i40e_ptp_adjtime;
	pf->ptp_caps.gettimex64 = i40e_ptp_gettimex;
	pf->ptp_caps.settime64 = i40e_ptp_settime;
	pf->ptp_caps.enable = i40e_ptp_feature_enable;

	/* Attempt to register the clock before enabling the hardware. */
	pf->ptp_clock = FUNC5(&pf->ptp_caps, &pf->pdev->dev);
	if (FUNC0(pf->ptp_clock))
		return FUNC2(pf->ptp_clock);

	/* clear the hwtstamp settings here during clock create, instead of
	 * during regular init, so that we can maintain settings across a
	 * reset or suspend.
	 */
	pf->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
	pf->tstamp_config.tx_type = HWTSTAMP_TX_OFF;

	/* Set the previous "reset" time to the current Kernel clock time */
	FUNC4(&pf->ptp_prev_hw_time);
	pf->ptp_reset_start = FUNC3();

	return 0;
}