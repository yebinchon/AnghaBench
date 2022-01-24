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
struct iproc_mdiomux_desc {scalar_t__ base; scalar_t__ core_clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MDIO_OPERATING_FREQUENCY ; 
 int MDIO_RATE_ADJ_DIVIDENT ; 
 int MDIO_RATE_ADJ_DIVIDENT_SHIFT ; 
 scalar_t__ MDIO_RATE_ADJ_EXT_OFFSET ; 
 scalar_t__ MDIO_RATE_ADJ_INT_OFFSET ; 
 scalar_t__ MDIO_SCAN_CTRL_OFFSET ; 
 int /*<<< orphan*/  MDIO_SCAN_CTRL_OVRIDE_EXT_MSTR ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct iproc_mdiomux_desc *md)
{
	u32 divisor;
	u32 val;

	/* Disable external mdio master access */
	val = FUNC2(md->base + MDIO_SCAN_CTRL_OFFSET);
	val |= FUNC0(MDIO_SCAN_CTRL_OVRIDE_EXT_MSTR);
	FUNC3(val, md->base + MDIO_SCAN_CTRL_OFFSET);

	if (md->core_clk) {
		/* use rate adjust regs to derrive the mdio's operating
		 * frequency from the specified core clock
		 */
		divisor = FUNC1(md->core_clk) / MDIO_OPERATING_FREQUENCY;
		divisor = divisor / (MDIO_RATE_ADJ_DIVIDENT + 1);
		val = divisor;
		val |= MDIO_RATE_ADJ_DIVIDENT << MDIO_RATE_ADJ_DIVIDENT_SHIFT;
		FUNC3(val, md->base + MDIO_RATE_ADJ_EXT_OFFSET);
		FUNC3(val, md->base + MDIO_RATE_ADJ_INT_OFFSET);
	}
}