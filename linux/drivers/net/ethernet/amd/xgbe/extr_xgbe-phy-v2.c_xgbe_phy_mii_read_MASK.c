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
struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int conn_type; } ;
struct mii_bus {struct xgbe_prv_data* priv; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int XGBE_CONN_TYPE_MDIO ; 
 int XGBE_CONN_TYPE_SFP ; 
 int FUNC0 (struct xgbe_prv_data*) ; 
 int FUNC1 (struct xgbe_prv_data*,int) ; 
 int FUNC2 (struct xgbe_prv_data*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *mii, int addr, int reg)
{
	struct xgbe_prv_data *pdata = mii->priv;
	struct xgbe_phy_data *phy_data = pdata->phy_data;
	int ret;

	ret = FUNC0(pdata);
	if (ret)
		return ret;

	if (phy_data->conn_type == XGBE_CONN_TYPE_SFP)
		ret = FUNC1(pdata, reg);
	else if (phy_data->conn_type & XGBE_CONN_TYPE_MDIO)
		ret = FUNC2(pdata, addr, reg);
	else
		ret = -ENOTSUPP;

	FUNC3(pdata);

	return ret;
}