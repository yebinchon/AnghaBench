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
typedef  int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;

/* Variables and functions */
 scalar_t__ MAC_TCR ; 
 int /*<<< orphan*/  MAC_TCR_SS_LEN ; 
 int /*<<< orphan*/  MAC_TCR_SS_POS ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct xlgmac_pdata *pdata)
{
	u32 regval;

	regval = FUNC0(FUNC2(pdata->mac_regs + MAC_TCR),
				     MAC_TCR_SS_POS, MAC_TCR_SS_LEN);
	if (regval == 0x1)
		return 0;

	regval = FUNC2(pdata->mac_regs + MAC_TCR);
	regval = FUNC1(regval, MAC_TCR_SS_POS,
				     MAC_TCR_SS_LEN, 0x1);
	FUNC3(regval, pdata->mac_regs + MAC_TCR);

	return 0;
}