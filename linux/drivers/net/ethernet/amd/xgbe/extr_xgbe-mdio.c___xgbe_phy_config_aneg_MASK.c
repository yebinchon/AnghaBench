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
struct TYPE_6__ {scalar_t__ autoneg; } ;
struct TYPE_4__ {int (* an_config ) (struct xgbe_prv_data*) ;} ;
struct TYPE_5__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {int /*<<< orphan*/  an_mutex; int /*<<< orphan*/  dev_state; int /*<<< orphan*/  an_irq; void* kx_state; void* kr_state; void* an_state; void* an_result; int /*<<< orphan*/  netdev; int /*<<< orphan*/  kr_redrv; TYPE_3__ phy; TYPE_2__ phy_if; int /*<<< orphan*/  link_check; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 void* XGBE_AN_READY ; 
 int /*<<< orphan*/  XGBE_LINK_ERR ; 
 int /*<<< orphan*/  XGBE_LINK_INIT ; 
 int /*<<< orphan*/  XGBE_MODE_KR ; 
 int /*<<< orphan*/  XGBE_MODE_KX_1000 ; 
 int /*<<< orphan*/  XGBE_MODE_KX_2500 ; 
 int /*<<< orphan*/  XGBE_MODE_SFI ; 
 int /*<<< orphan*/  XGBE_MODE_SGMII_100 ; 
 int /*<<< orphan*/  XGBE_MODE_SGMII_1000 ; 
 int /*<<< orphan*/  XGBE_MODE_X ; 
 void* XGBE_RX_BPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*) ; 
 int FUNC12 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct xgbe_prv_data *pdata, bool set_mode)
{
	int ret;

	FUNC3(&pdata->an_mutex);

	FUNC6(XGBE_LINK_INIT, &pdata->dev_state);
	pdata->link_check = jiffies;

	ret = pdata->phy_if.phy_impl.an_config(pdata);
	if (ret)
		goto out;

	if (pdata->phy.autoneg != AUTONEG_ENABLE) {
		ret = FUNC12(pdata);
		if (ret || !pdata->kr_redrv)
			goto out;

		FUNC5(pdata, link, pdata->netdev, "AN redriver support\n");
	} else {
		FUNC5(pdata, link, pdata->netdev, "AN PHY configuration\n");
	}

	/* Disable auto-negotiation interrupt */
	FUNC1(pdata->an_irq);

	if (set_mode) {
		/* Start auto-negotiation in a supported mode */
		if (FUNC14(pdata, XGBE_MODE_KR)) {
			FUNC13(pdata, XGBE_MODE_KR);
		} else if (FUNC14(pdata, XGBE_MODE_KX_2500)) {
			FUNC13(pdata, XGBE_MODE_KX_2500);
		} else if (FUNC14(pdata, XGBE_MODE_KX_1000)) {
			FUNC13(pdata, XGBE_MODE_KX_1000);
		} else if (FUNC14(pdata, XGBE_MODE_SFI)) {
			FUNC13(pdata, XGBE_MODE_SFI);
		} else if (FUNC14(pdata, XGBE_MODE_X)) {
			FUNC13(pdata, XGBE_MODE_X);
		} else if (FUNC14(pdata, XGBE_MODE_SGMII_1000)) {
			FUNC13(pdata, XGBE_MODE_SGMII_1000);
		} else if (FUNC14(pdata, XGBE_MODE_SGMII_100)) {
			FUNC13(pdata, XGBE_MODE_SGMII_100);
		} else {
			FUNC2(pdata->an_irq);
			ret = -EINVAL;
			goto out;
		}
	}

	/* Disable and stop any in progress auto-negotiation */
	FUNC9(pdata);

	/* Clear any auto-negotitation interrupts */
	FUNC8(pdata);

	pdata->an_result = XGBE_AN_READY;
	pdata->an_state = XGBE_AN_READY;
	pdata->kr_state = XGBE_RX_BPA;
	pdata->kx_state = XGBE_RX_BPA;

	/* Re-enable auto-negotiation interrupt */
	FUNC2(pdata->an_irq);

	FUNC10(pdata);
	FUNC11(pdata);

out:
	if (ret)
		FUNC6(XGBE_LINK_ERR, &pdata->dev_state);
	else
		FUNC0(XGBE_LINK_ERR, &pdata->dev_state);

	FUNC4(&pdata->an_mutex);

	return ret;
}