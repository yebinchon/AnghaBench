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
struct octeon_device {int num_oqs; int /*<<< orphan*/  pcie_port; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int CN6XXX_SLI_INT_ENB64_PORT0 ; 
 int CN6XXX_SLI_INT_ENB64_PORT1 ; 
 int CN6XXX_SLI_INT_SUM64 ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int CN6XXX_SLI_OQ_INT_LEVEL_PKTS ; 
 int CN6XXX_SLI_OQ_INT_LEVEL_TIME ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int CN6XXX_WIN_RD_ADDR_HI ; 
 int CN6XXX_WIN_RD_ADDR_LO ; 
 int CN6XXX_WIN_WR_ADDR_HI ; 
 int CN6XXX_WIN_WR_ADDR_LO ; 
 int CN6XXX_WIN_WR_DATA_HI ; 
 int CN6XXX_WIN_WR_DATA_LO ; 
 int CN6XXX_WIN_WR_MASK_REG ; 
 int FUNC8 (struct octeon_device*,int) ; 
 int FUNC9 (struct octeon_device*,int) ; 
 scalar_t__ FUNC10 (char*,char*,...) ; 

__attribute__((used)) static int FUNC11(char *s, struct octeon_device *oct)
{
	u32 reg;
	int i, len = 0;

	/* PCI  Window Registers */

	len += FUNC10(s + len, "\n\t Octeon CSR Registers\n\n");
	reg = CN6XXX_WIN_WR_ADDR_LO;
	len += FUNC10(s + len, "\n[%02x] (WIN_WR_ADDR_LO): %08x\n",
		       CN6XXX_WIN_WR_ADDR_LO, FUNC9(oct, reg));
	reg = CN6XXX_WIN_WR_ADDR_HI;
	len += FUNC10(s + len, "[%02x] (WIN_WR_ADDR_HI): %08x\n",
		       CN6XXX_WIN_WR_ADDR_HI, FUNC9(oct, reg));
	reg = CN6XXX_WIN_RD_ADDR_LO;
	len += FUNC10(s + len, "[%02x] (WIN_RD_ADDR_LO): %08x\n",
		       CN6XXX_WIN_RD_ADDR_LO, FUNC9(oct, reg));
	reg = CN6XXX_WIN_RD_ADDR_HI;
	len += FUNC10(s + len, "[%02x] (WIN_RD_ADDR_HI): %08x\n",
		       CN6XXX_WIN_RD_ADDR_HI, FUNC9(oct, reg));
	reg = CN6XXX_WIN_WR_DATA_LO;
	len += FUNC10(s + len, "[%02x] (WIN_WR_DATA_LO): %08x\n",
		       CN6XXX_WIN_WR_DATA_LO, FUNC9(oct, reg));
	reg = CN6XXX_WIN_WR_DATA_HI;
	len += FUNC10(s + len, "[%02x] (WIN_WR_DATA_HI): %08x\n",
		       CN6XXX_WIN_WR_DATA_HI, FUNC9(oct, reg));
	len += FUNC10(s + len, "[%02x] (WIN_WR_MASK_REG): %08x\n",
		       CN6XXX_WIN_WR_MASK_REG,
		       FUNC9(oct, CN6XXX_WIN_WR_MASK_REG));

	/* PCI  Interrupt Register */
	len += FUNC10(s + len, "\n[%x] (INT_ENABLE PORT 0): %08x\n",
		       CN6XXX_SLI_INT_ENB64_PORT0, FUNC9(oct,
						CN6XXX_SLI_INT_ENB64_PORT0));
	len += FUNC10(s + len, "\n[%x] (INT_ENABLE PORT 1): %08x\n",
		       CN6XXX_SLI_INT_ENB64_PORT1,
		       FUNC9(oct, CN6XXX_SLI_INT_ENB64_PORT1));
	len += FUNC10(s + len, "[%x] (INT_SUM): %08x\n", CN6XXX_SLI_INT_SUM64,
		       FUNC9(oct, CN6XXX_SLI_INT_SUM64));

	/* PCI  Output queue registers */
	for (i = 0; i < oct->num_oqs; i++) {
		reg = FUNC7(i);
		len += FUNC10(s + len, "\n[%x] (PKTS_SENT_%d): %08x\n",
			       reg, i, FUNC9(oct, reg));
		reg = FUNC6(i);
		len += FUNC10(s + len, "[%x] (PKT_CREDITS_%d): %08x\n",
			       reg, i, FUNC9(oct, reg));
	}
	reg = CN6XXX_SLI_OQ_INT_LEVEL_PKTS;
	len += FUNC10(s + len, "\n[%x] (PKTS_SENT_INT_LEVEL): %08x\n",
		       reg, FUNC9(oct, reg));
	reg = CN6XXX_SLI_OQ_INT_LEVEL_TIME;
	len += FUNC10(s + len, "[%x] (PKTS_SENT_TIME): %08x\n",
		       reg, FUNC9(oct, reg));

	/* PCI  Input queue registers */
	for (i = 0; i <= 3; i++) {
		u32 reg;

		reg = FUNC4(i);
		len += FUNC10(s + len, "\n[%x] (INSTR_DOORBELL_%d): %08x\n",
			       reg, i, FUNC9(oct, reg));
		reg = FUNC5(i);
		len += FUNC10(s + len, "[%x] (INSTR_COUNT_%d): %08x\n",
			       reg, i, FUNC9(oct, reg));
	}

	/* PCI  DMA registers */

	len += FUNC10(s + len, "\n[%x] (DMA_CNT_0): %08x\n",
		       FUNC1(0),
		       FUNC9(oct, FUNC1(0)));
	reg = FUNC2(0);
	len += FUNC10(s + len, "[%x] (DMA_INT_LEV_0): %08x\n",
		       FUNC2(0), FUNC9(oct, reg));
	reg = FUNC3(0);
	len += FUNC10(s + len, "[%x] (DMA_TIME_0): %08x\n",
		       FUNC3(0),
		       FUNC9(oct, reg));

	len += FUNC10(s + len, "\n[%x] (DMA_CNT_1): %08x\n",
		       FUNC1(1),
		       FUNC9(oct, FUNC1(1)));
	reg = FUNC2(1);
	len += FUNC10(s + len, "[%x] (DMA_INT_LEV_1): %08x\n",
		       FUNC2(1),
		       FUNC9(oct, reg));
	reg = FUNC2(1);
	len += FUNC10(s + len, "[%x] (DMA_TIME_1): %08x\n",
		       FUNC3(1),
		       FUNC9(oct, reg));

	/* PCI  Index registers */

	len += FUNC10(s + len, "\n");

	for (i = 0; i < 16; i++) {
		reg = FUNC8(oct, FUNC0(i, oct->pcie_port));
		len += FUNC10(s + len, "[%llx] (BAR1_INDEX_%02d): %08x\n",
			       FUNC0(i, oct->pcie_port), i, reg);
	}

	return len;
}