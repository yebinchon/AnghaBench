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
struct TYPE_4__ {int (* i2c_start ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* i2c_stop ) (struct xgbe_prv_data*) ;} ;
struct TYPE_3__ {int (* set_ext_mii_mode ) (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct xgbe_prv_data {TYPE_2__ i2c_if; int /*<<< orphan*/  netdev; TYPE_1__ hw_if; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_mode; int /*<<< orphan*/  start_mode; int /*<<< orphan*/  redrv_addr; int /*<<< orphan*/  redrv_if; scalar_t__ redrv; } ;

/* Variables and functions */
 int /*<<< orphan*/  XGBE_MDIO_MODE_CL22 ; 
#define  XGBE_PORT_MODE_SFP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xgbe_prv_data*) ; 
 int FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC8(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;
	int ret;

	/* Start the I2C controller */
	ret = pdata->i2c_if.i2c_start(pdata);
	if (ret)
		return ret;

	/* Set the proper MDIO mode for the re-driver */
	if (phy_data->redrv && !phy_data->redrv_if) {
		ret = pdata->hw_if.set_ext_mii_mode(pdata, phy_data->redrv_addr,
						    XGBE_MDIO_MODE_CL22);
		if (ret) {
			FUNC0(pdata->netdev,
				   "redriver mdio port not compatible (%u)\n",
				   phy_data->redrv_addr);
			return ret;
		}
	}

	/* Start in highest supported mode */
	FUNC6(pdata, phy_data->start_mode);

	/* Reset CDR support */
	FUNC4(pdata);

	/* After starting the I2C controller, we can check for an SFP */
	switch (phy_data->port_mode) {
	case XGBE_PORT_MODE_SFP:
		FUNC7(pdata);
		break;
	default:
		break;
	}

	/* If we have an external PHY, start it */
	ret = FUNC5(pdata);
	if (ret)
		goto err_i2c;

	return 0;

err_i2c:
	pdata->i2c_if.i2c_stop(pdata);

	return ret;
}