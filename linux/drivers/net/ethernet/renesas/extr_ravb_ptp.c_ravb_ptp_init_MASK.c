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
struct TYPE_2__ {int /*<<< orphan*/  info; int /*<<< orphan*/  clock; int /*<<< orphan*/  default_addend; int /*<<< orphan*/  current_addend; } ;
struct ravb_private {TYPE_1__ ptp; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCCR ; 
 int /*<<< orphan*/  GCCR_TCR ; 
 int /*<<< orphan*/  GCCR_TCR_NOREQ ; 
 int /*<<< orphan*/  GCCR_TCSS ; 
 int /*<<< orphan*/  GCCR_TCSS_ADJGPTP ; 
 int /*<<< orphan*/  GTI ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ravb_ptp_info ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct net_device *ndev, struct platform_device *pdev)
{
	struct ravb_private *priv = FUNC0(ndev);
	unsigned long flags;

	priv->ptp.info = ravb_ptp_info;

	priv->ptp.default_addend = FUNC3(ndev, GTI);
	priv->ptp.current_addend = priv->ptp.default_addend;

	FUNC5(&priv->lock, flags);
	FUNC4(ndev, GCCR, GCCR_TCR, GCCR_TCR_NOREQ);
	FUNC2(ndev, GCCR, GCCR_TCSS, GCCR_TCSS_ADJGPTP);
	FUNC6(&priv->lock, flags);

	priv->ptp.clock = FUNC1(&priv->ptp.info, &pdev->dev);
}