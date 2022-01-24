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
typedef  int u8 ;
struct xgbe_prv_data {int dummy; } ;
typedef  int /*<<< orphan*/  mii_val ;
typedef  int /*<<< orphan*/  mii_reg ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  XGBE_SFP_PHY_ADDRESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC4(struct xgbe_prv_data *pdata, int reg)
{
	__be16 mii_val;
	u8 mii_reg;
	int ret;

	ret = FUNC2(pdata);
	if (ret)
		return ret;

	mii_reg = reg;
	ret = FUNC1(pdata, XGBE_SFP_PHY_ADDRESS,
				&mii_reg, sizeof(mii_reg),
				&mii_val, sizeof(mii_val));
	if (!ret)
		ret = FUNC0(mii_val);

	FUNC3(pdata);

	return ret;
}