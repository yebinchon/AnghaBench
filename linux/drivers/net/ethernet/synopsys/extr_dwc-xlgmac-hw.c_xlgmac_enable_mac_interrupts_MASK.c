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
struct xlgmac_pdata {scalar_t__ mac_regs; } ;

/* Variables and functions */
 scalar_t__ MAC_IER ; 
 int /*<<< orphan*/  MAC_IER_TSIE_LEN ; 
 int /*<<< orphan*/  MAC_IER_TSIE_POS ; 
 scalar_t__ MMC_RIER ; 
 int /*<<< orphan*/  MMC_RIER_ALL_INTERRUPTS_LEN ; 
 int /*<<< orphan*/  MMC_RIER_ALL_INTERRUPTS_POS ; 
 scalar_t__ MMC_TIER ; 
 int /*<<< orphan*/  MMC_TIER_ALL_INTERRUPTS_LEN ; 
 int /*<<< orphan*/  MMC_TIER_ALL_INTERRUPTS_POS ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct xlgmac_pdata *pdata)
{
	unsigned int mac_ier = 0;
	u32 regval;

	/* Enable Timestamp interrupt */
	mac_ier = FUNC0(mac_ier, MAC_IER_TSIE_POS,
				      MAC_IER_TSIE_LEN, 1);

	FUNC2(mac_ier, pdata->mac_regs + MAC_IER);

	/* Enable all counter interrupts */
	regval = FUNC1(pdata->mac_regs + MMC_RIER);
	regval = FUNC0(regval, MMC_RIER_ALL_INTERRUPTS_POS,
				     MMC_RIER_ALL_INTERRUPTS_LEN, 0xffffffff);
	FUNC2(regval, pdata->mac_regs + MMC_RIER);
	regval = FUNC1(pdata->mac_regs + MMC_TIER);
	regval = FUNC0(regval, MMC_TIER_ALL_INTERRUPTS_POS,
				     MMC_TIER_ALL_INTERRUPTS_LEN, 0xffffffff);
	FUNC2(regval, pdata->mac_regs + MMC_TIER);
}