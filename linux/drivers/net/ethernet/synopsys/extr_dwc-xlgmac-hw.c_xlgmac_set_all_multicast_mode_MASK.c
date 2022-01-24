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
typedef  unsigned int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 scalar_t__ MAC_PFR ; 
 int /*<<< orphan*/  MAC_PFR_PM_LEN ; 
 int /*<<< orphan*/  MAC_PFR_PM_POS ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct xlgmac_pdata *pdata,
					 unsigned int enable)
{
	unsigned int val = enable ? 1 : 0;
	u32 regval;

	regval = FUNC0(FUNC3(pdata->mac_regs + MAC_PFR),
				     MAC_PFR_PM_POS, MAC_PFR_PM_LEN);
	if (regval == val)
		return 0;

	FUNC2(pdata, drv, pdata->netdev, "%s allmulti mode\n",
		  enable ? "entering" : "leaving");

	regval = FUNC3(pdata->mac_regs + MAC_PFR);
	regval = FUNC1(regval, MAC_PFR_PM_POS,
				     MAC_PFR_PM_LEN, val);
	FUNC4(regval, pdata->mac_regs + MAC_PFR);

	return 0;
}