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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_INTERRUPTS ; 
 int /*<<< orphan*/  MAC_IER ; 
 int /*<<< orphan*/  MAC_MDIOIER ; 
 int /*<<< orphan*/  MMC_RIER ; 
 int /*<<< orphan*/  MMC_TIER ; 
 int /*<<< orphan*/  SNGLCOMPIE ; 
 int /*<<< orphan*/  TSIE ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	unsigned int mac_ier = 0;

	/* Enable Timestamp interrupt */
	FUNC2(mac_ier, MAC_IER, TSIE, 1);

	FUNC0(pdata, MAC_IER, mac_ier);

	/* Enable all counter interrupts */
	FUNC1(pdata, MMC_RIER, ALL_INTERRUPTS, 0xffffffff);
	FUNC1(pdata, MMC_TIER, ALL_INTERRUPTS, 0xffffffff);

	/* Enable MDIO single command completion interrupt */
	FUNC1(pdata, MAC_MDIOIER, SNGLCOMPIE, 1);
}