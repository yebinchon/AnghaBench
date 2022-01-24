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
struct xgbe_phy_data {int port_mode; } ;

/* Variables and functions */
#define  XGBE_PORT_MODE_1000BASE_T 135 
#define  XGBE_PORT_MODE_1000BASE_X 134 
#define  XGBE_PORT_MODE_10GBASE_R 133 
#define  XGBE_PORT_MODE_10GBASE_T 132 
#define  XGBE_PORT_MODE_BACKPLANE 131 
#define  XGBE_PORT_MODE_BACKPLANE_2500 130 
#define  XGBE_PORT_MODE_NBASE_T 129 
#define  XGBE_PORT_MODE_SFP 128 
 int FUNC0 (struct xgbe_phy_data*,int) ; 
 int FUNC1 (struct xgbe_phy_data*,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct xgbe_phy_data*,int) ; 

__attribute__((used)) static bool FUNC5(struct xgbe_prv_data *pdata, int speed)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;

	switch (phy_data->port_mode) {
	case XGBE_PORT_MODE_BACKPLANE:
		return FUNC3(speed);
	case XGBE_PORT_MODE_BACKPLANE_2500:
		return FUNC2(speed);
	case XGBE_PORT_MODE_1000BASE_T:
	case XGBE_PORT_MODE_NBASE_T:
	case XGBE_PORT_MODE_10GBASE_T:
		return FUNC0(phy_data, speed);
	case XGBE_PORT_MODE_1000BASE_X:
	case XGBE_PORT_MODE_10GBASE_R:
		return FUNC1(phy_data, speed);
	case XGBE_PORT_MODE_SFP:
		return FUNC4(phy_data, speed);
	default:
		return false;
	}
}