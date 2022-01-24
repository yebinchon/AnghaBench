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
typedef  int u32 ;
struct twl6030_irq {int /*<<< orphan*/ * irq_mapping_tbl; int /*<<< orphan*/  irq_domain; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_INT_STS_A ; 
 int /*<<< orphan*/  TWL_MODULE_PIH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	int i, ret;
	union {
		u8 bytes[4];
		__le32 int_sts;
	} sts;
	u32 int_sts; /* sts.int_sts converted to CPU endianness */
	struct twl6030_irq *pdata = data;

	/* read INT_STS_A, B and C in one shot using a burst read */
	ret = FUNC6(TWL_MODULE_PIH, sts.bytes, REG_INT_STS_A, 3);
	if (ret) {
		FUNC5("twl6030_irq: I2C error %d reading PIH ISR\n", ret);
		return IRQ_HANDLED;
	}

	sts.bytes[3] = 0; /* Only 24 bits are valid*/

	/*
	 * Since VBUS status bit is not reliable for VBUS disconnect
	 * use CHARGER VBUS detection status bit instead.
	 */
	if (sts.bytes[2] & 0x10)
		sts.bytes[2] |= 0x08;

	int_sts = FUNC2(sts.int_sts);
	for (i = 0; int_sts; int_sts >>= 1, i++)
		if (int_sts & 0x1) {
			int module_irq =
				FUNC1(pdata->irq_domain,
						 pdata->irq_mapping_tbl[i]);
			if (module_irq)
				FUNC0(module_irq);
			else
				FUNC4("twl6030_irq: Unmapped PIH ISR %u detected\n",
				       i);
			FUNC3("twl6030_irq: PIH ISR %u, virq%u\n",
				 i, module_irq);
		}

	/*
	 * NOTE:
	 * Simulation confirms that documentation is wrong w.r.t the
	 * interrupt status clear operation. A single *byte* write to
	 * any one of STS_A to STS_C register results in all three
	 * STS registers being reset. Since it does not matter which
	 * value is written, all three registers are cleared on a
	 * single byte write, so we just use 0x0 to clear.
	 */
	ret = FUNC7(TWL_MODULE_PIH, 0x00, REG_INT_STS_A);
	if (ret)
		FUNC5("twl6030_irq: I2C error in clearing PIH ISR\n");

	return IRQ_HANDLED;
}