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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int max_adj; int pps; int /*<<< orphan*/  enable; int /*<<< orphan*/  settime64; int /*<<< orphan*/  gettime64; int /*<<< orphan*/  adjtime; int /*<<< orphan*/  adjfreq; scalar_t__ n_pins; scalar_t__ n_per_out; scalar_t__ n_ext_ts; scalar_t__ n_alarm; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct fec_enet_private {int cycle_speed; int ptp_inc; int /*<<< orphan*/  time_keep; int /*<<< orphan*/ * ptp_clock; TYPE_1__ ptp_caps; int /*<<< orphan*/  tmreg_lock; int /*<<< orphan*/  clk_ptp; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  fec_pps_interrupt ; 
 int /*<<< orphan*/  fec_ptp_adjfreq ; 
 int /*<<< orphan*/  fec_ptp_adjtime ; 
 int /*<<< orphan*/  fec_ptp_enable ; 
 int /*<<< orphan*/  fec_ptp_gettime ; 
 int /*<<< orphan*/  fec_ptp_settime ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  fec_time_keep ; 
 struct fec_enet_private* FUNC7 (struct net_device*) ; 
 struct net_device* FUNC8 (struct platform_device*) ; 
 int FUNC9 (struct platform_device*,char*) ; 
 int FUNC10 (struct platform_device*,int) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct platform_device *pdev, int irq_idx)
{
	struct net_device *ndev = FUNC8(pdev);
	struct fec_enet_private *fep = FUNC7(ndev);
	int irq;
	int ret;

	fep->ptp_caps.owner = THIS_MODULE;
	FUNC13(fep->ptp_caps.name, 16, "fec ptp");

	fep->ptp_caps.max_adj = 250000000;
	fep->ptp_caps.n_alarm = 0;
	fep->ptp_caps.n_ext_ts = 0;
	fep->ptp_caps.n_per_out = 0;
	fep->ptp_caps.n_pins = 0;
	fep->ptp_caps.pps = 1;
	fep->ptp_caps.adjfreq = fec_ptp_adjfreq;
	fep->ptp_caps.adjtime = fec_ptp_adjtime;
	fep->ptp_caps.gettime64 = fec_ptp_gettime;
	fep->ptp_caps.settime64 = fec_ptp_settime;
	fep->ptp_caps.enable = fec_ptp_enable;

	fep->cycle_speed = FUNC2(fep->clk_ptp);
	fep->ptp_inc = NSEC_PER_SEC / fep->cycle_speed;

	FUNC14(&fep->tmreg_lock);

	FUNC6(ndev);

	FUNC0(&fep->time_keep, fec_time_keep);

	irq = FUNC9(pdev, "pps");
	if (irq < 0)
		irq = FUNC10(pdev, irq_idx);
	/* Failure to get an irq is not fatal,
	 * only the PTP_CLOCK_PPS clock events should stop
	 */
	if (irq >= 0) {
		ret = FUNC5(&pdev->dev, irq, fec_pps_interrupt,
				       0, pdev->name, ndev);
		if (ret < 0)
			FUNC4(&pdev->dev, "request for pps irq failed(%d)\n",
				 ret);
	}

	fep->ptp_clock = FUNC11(&fep->ptp_caps, &pdev->dev);
	if (FUNC1(fep->ptp_clock)) {
		fep->ptp_clock = NULL;
		FUNC3(&pdev->dev, "ptp_clock_register failed\n");
	}

	FUNC12(&fep->time_keep, HZ);
}