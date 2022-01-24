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
struct TYPE_3__ {int (* start ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* stop ) (struct xgbe_prv_data*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {scalar_t__ dev_irq; scalar_t__ an_irq; int phy_started; TYPE_2__ phy_if; int /*<<< orphan*/  dev; int /*<<< orphan*/  an_name; int /*<<< orphan*/  tasklet_an; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  XGBE_MODE_KR ; 
 int /*<<< orphan*/  XGBE_MODE_KX_1000 ; 
 int /*<<< orphan*/  XGBE_MODE_KX_2500 ; 
 int /*<<< orphan*/  XGBE_MODE_SFI ; 
 int /*<<< orphan*/  XGBE_MODE_SGMII_100 ; 
 int /*<<< orphan*/  XGBE_MODE_SGMII_1000 ; 
 int /*<<< orphan*/  XGBE_MODE_X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,struct xgbe_prv_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  xgbe_an_isr ; 
 int /*<<< orphan*/  xgbe_an_isr_task ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*) ; 
 int FUNC12 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct xgbe_prv_data*) ; 
 scalar_t__ FUNC16 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC18(struct xgbe_prv_data *pdata)
{
	struct net_device *netdev = pdata->netdev;
	int ret;

	FUNC3(pdata, link, pdata->netdev, "starting PHY\n");

	ret = pdata->phy_if.phy_impl.start(pdata);
	if (ret)
		return ret;

	/* If we have a separate AN irq, enable it */
	if (pdata->dev_irq != pdata->an_irq) {
		FUNC6(&pdata->tasklet_an, xgbe_an_isr_task,
			     (unsigned long)pdata);

		ret = FUNC1(pdata->dev, pdata->an_irq,
				       xgbe_an_isr, 0, pdata->an_name,
				       pdata);
		if (ret) {
			FUNC2(netdev, "phy irq request failed\n");
			goto err_stop;
		}
	}

	/* Set initial mode - call the mode setting routines
	 * directly to insure we are properly configured
	 */
	if (FUNC16(pdata, XGBE_MODE_KR)) {
		FUNC9(pdata);
	} else if (FUNC16(pdata, XGBE_MODE_KX_2500)) {
		FUNC11(pdata);
	} else if (FUNC16(pdata, XGBE_MODE_KX_1000)) {
		FUNC10(pdata);
	} else if (FUNC16(pdata, XGBE_MODE_SFI)) {
		FUNC13(pdata);
	} else if (FUNC16(pdata, XGBE_MODE_X)) {
		FUNC17(pdata);
	} else if (FUNC16(pdata, XGBE_MODE_SGMII_1000)) {
		FUNC14(pdata);
	} else if (FUNC16(pdata, XGBE_MODE_SGMII_100)) {
		FUNC15(pdata);
	} else {
		ret = -EINVAL;
		goto err_irq;
	}

	/* Indicate the PHY is up and running */
	pdata->phy_started = 1;

	FUNC8(pdata);
	FUNC7(pdata);

	return FUNC12(pdata);

err_irq:
	if (pdata->dev_irq != pdata->an_irq)
		FUNC0(pdata->dev, pdata->an_irq, pdata);

err_stop:
	pdata->phy_if.phy_impl.stop(pdata);

	return ret;
}