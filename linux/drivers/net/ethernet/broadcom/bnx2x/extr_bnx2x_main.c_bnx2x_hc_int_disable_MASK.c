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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int HC_CONFIG_0_REG_ATTN_BIT_EN_0 ; 
 int HC_CONFIG_0_REG_INT_LINE_EN_0 ; 
 int HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 ; 
 int HC_CONFIG_0_REG_SINGLE_ISR_EN_0 ; 
 int HC_REG_CONFIG_0 ; 
 int HC_REG_CONFIG_1 ; 
 int HC_REG_INT_MASK ; 
 int /*<<< orphan*/  NETIF_MSG_IFDOWN ; 
 int FUNC4 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int,int) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp)
{
	int port = FUNC1(bp);
	u32 addr = port ? HC_REG_CONFIG_1 : HC_REG_CONFIG_0;
	u32 val = FUNC4(bp, addr);

	/* in E1 we must use only PCI configuration space to disable
	 * MSI/MSIX capability
	 * It's forbidden to disable IGU_PF_CONF_MSI_MSIX_EN in HC block
	 */
	if (FUNC2(bp)) {
		/* Since IGU_PF_CONF_MSI_MSIX_EN still always on
		 * Use mask register to prevent from HC sending interrupts
		 * after we exit the function
		 */
		FUNC5(bp, HC_REG_INT_MASK + port*4, 0);

		val &= ~(HC_CONFIG_0_REG_SINGLE_ISR_EN_0 |
			 HC_CONFIG_0_REG_INT_LINE_EN_0 |
			 HC_CONFIG_0_REG_ATTN_BIT_EN_0);
	} else
		val &= ~(HC_CONFIG_0_REG_SINGLE_ISR_EN_0 |
			 HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 |
			 HC_CONFIG_0_REG_INT_LINE_EN_0 |
			 HC_CONFIG_0_REG_ATTN_BIT_EN_0);

	FUNC3(NETIF_MSG_IFDOWN,
	   "write %x to HC %d (addr 0x%x)\n",
	   val, port, addr);

	FUNC5(bp, addr, val);
	if (FUNC4(bp, addr) != val)
		FUNC0("BUG! Proper val not read from IGU!\n");
}