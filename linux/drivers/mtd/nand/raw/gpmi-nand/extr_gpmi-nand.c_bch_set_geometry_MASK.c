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
struct resources {scalar_t__ bch_regs; } ;
struct gpmi_nand_data {int /*<<< orphan*/  dev; struct resources resources; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpmi_nand_data*) ; 
 scalar_t__ HW_BCH_LAYOUTSELECT ; 
 int FUNC1 (struct gpmi_nand_data*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct gpmi_nand_data *this)
{
	struct resources *r = &this->resources;
	int ret;

	ret = FUNC1(this);
	if (ret)
		return ret;

	ret = FUNC3(this->dev);
	if (ret < 0)
		return ret;

	/*
	* Due to erratum #2847 of the MX23, the BCH cannot be soft reset on this
	* chip, otherwise it will lock up. So we skip resetting BCH on the MX23.
	* and MX28.
	*/
	ret = FUNC2(r->bch_regs, FUNC0(this));
	if (ret)
		goto err_out;

	/* Set *all* chip selects to use layout 0. */
	FUNC6(0, r->bch_regs + HW_BCH_LAYOUTSELECT);

	ret = 0;
err_out:
	FUNC4(this->dev);
	FUNC5(this->dev);

	return ret;
}