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
struct gpmi_nand_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpmi_nand_data*) ; 

__attribute__((used)) static int FUNC4(struct gpmi_nand_data *this)
{
	int ret;

	/* Free the temporary DMA memory for reading ID. */
	FUNC3(this);

	/* Set up the NFC geometry which is used by BCH. */
	ret = FUNC0(this);
	if (ret) {
		FUNC1(this->dev, "Error setting BCH geometry : %d\n", ret);
		return ret;
	}

	/* Alloc the new DMA buffers according to the pagesize and oobsize */
	return FUNC2(this);
}