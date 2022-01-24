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
typedef  int /*<<< orphan*/  u8 ;
struct xgbe_prv_data {int /*<<< orphan*/  netdev; } ;
struct netdev_hw_addr {int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE ; 
 int /*<<< orphan*/  MAC_MACA1HR ; 
 scalar_t__ MAC_MACA_INC ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata,
			     struct netdev_hw_addr *ha, unsigned int *mac_reg)
{
	unsigned int mac_addr_hi, mac_addr_lo;
	u8 *mac_addr;

	mac_addr_lo = 0;
	mac_addr_hi = 0;

	if (ha) {
		mac_addr = (u8 *)&mac_addr_lo;
		mac_addr[0] = ha->addr[0];
		mac_addr[1] = ha->addr[1];
		mac_addr[2] = ha->addr[2];
		mac_addr[3] = ha->addr[3];
		mac_addr = (u8 *)&mac_addr_hi;
		mac_addr[0] = ha->addr[4];
		mac_addr[1] = ha->addr[5];

		FUNC2(pdata, drv, pdata->netdev,
			  "adding mac address %pM at %#x\n",
			  ha->addr, *mac_reg);

		FUNC1(mac_addr_hi, MAC_MACA1HR, AE, 1);
	}

	FUNC0(pdata, *mac_reg, mac_addr_hi);
	*mac_reg += MAC_MACA_INC;
	FUNC0(pdata, *mac_reg, mac_addr_lo);
	*mac_reg += MAC_MACA_INC;
}