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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MDIO_CTRL1 ; 
 unsigned int MDIO_CTRL1_RESET ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct xgbe_prv_data *pdata)
{
	unsigned int reg, count;

	/* Perform a software reset of the PCS */
	reg = FUNC0(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
	reg |= MDIO_CTRL1_RESET;
	FUNC1(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);

	count = 50;
	do {
		FUNC2(20);
		reg = FUNC0(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
	} while ((reg & MDIO_CTRL1_RESET) && --count);

	if (reg & MDIO_CTRL1_RESET)
		return -ETIMEDOUT;

	return 0;
}