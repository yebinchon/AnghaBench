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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct octeon_device {int pf_num; int pcie_port; } ;

/* Variables and functions */
 int CN23XX_MAC_INT_OFFSET ; 
 int CN23XX_MAX_INPUT_QUEUES ; 
 int CN23XX_MAX_OUTPUT_QUEUES ; 
 int CN23XX_OQ_OFFSET ; 
 int CN23XX_PF_INT_OFFSET ; 
 int CN23XX_SLI_GBL_CONTROL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int CN23XX_SLI_OQ_WMARK ; 
 int CN23XX_SLI_OUT_BP_EN2_W1S ; 
 int CN23XX_SLI_OUT_BP_EN_W1S ; 
 int CN23XX_SLI_PKT_CNT_INT ; 
 int CN23XX_SLI_PKT_IOQ_RING_RST ; 
 int FUNC14 (int,int) ; 
 int CN23XX_SLI_PKT_TIME_INT ; 
 scalar_t__ FUNC15 (struct octeon_device*,int) ; 
 scalar_t__ FUNC16 (char*,char*,...) ; 

__attribute__((used)) static int FUNC17(char *s, struct octeon_device *oct)
{
	u32 reg;
	u8 pf_num = oct->pf_num;
	int len = 0;
	int i;

	/* PCI  Window Registers */

	len += FUNC16(s + len, "\n\t Octeon CSR Registers\n\n");

	/*0x29030 or 0x29040*/
	reg = FUNC14(oct->pcie_port, oct->pf_num);
	len += FUNC16(s + len,
		       "\n[%08x] (SLI_PKT_MAC%d_PF%d_RINFO): %016llx\n",
		       reg, oct->pcie_port, oct->pf_num,
		       (u64)FUNC15(oct, reg));

	/*0x27080 or 0x27090*/
	reg = FUNC5(oct->pcie_port, oct->pf_num);
	len +=
	    FUNC16(s + len, "\n[%08x] (SLI_MAC%d_PF%d_INT_ENB): %016llx\n",
		    reg, oct->pcie_port, oct->pf_num,
		    (u64)FUNC15(oct, reg));

	/*0x27000 or 0x27010*/
	reg = FUNC6(oct->pcie_port, oct->pf_num);
	len +=
	    FUNC16(s + len, "\n[%08x] (SLI_MAC%d_PF%d_INT_SUM): %016llx\n",
		    reg, oct->pcie_port, oct->pf_num,
		    (u64)FUNC15(oct, reg));

	/*0x29120*/
	reg = 0x29120;
	len += FUNC16(s + len, "\n[%08x] (SLI_PKT_MEM_CTL): %016llx\n", reg,
		       (u64)FUNC15(oct, reg));

	/*0x27300*/
	reg = 0x27300 + oct->pcie_port * CN23XX_MAC_INT_OFFSET +
	      (oct->pf_num) * CN23XX_PF_INT_OFFSET;
	len += FUNC16(
	    s + len, "\n[%08x] (SLI_MAC%d_PF%d_PKT_VF_INT): %016llx\n", reg,
	    oct->pcie_port, oct->pf_num, (u64)FUNC15(oct, reg));

	/*0x27200*/
	reg = 0x27200 + oct->pcie_port * CN23XX_MAC_INT_OFFSET +
	      (oct->pf_num) * CN23XX_PF_INT_OFFSET;
	len += FUNC16(s + len,
		       "\n[%08x] (SLI_MAC%d_PF%d_PP_VF_INT): %016llx\n",
		       reg, oct->pcie_port, oct->pf_num,
		       (u64)FUNC15(oct, reg));

	/*29130*/
	reg = CN23XX_SLI_PKT_CNT_INT;
	len += FUNC16(s + len, "\n[%08x] (SLI_PKT_CNT_INT): %016llx\n", reg,
		       (u64)FUNC15(oct, reg));

	/*0x29140*/
	reg = CN23XX_SLI_PKT_TIME_INT;
	len += FUNC16(s + len, "\n[%08x] (SLI_PKT_TIME_INT): %016llx\n", reg,
		       (u64)FUNC15(oct, reg));

	/*0x29160*/
	reg = 0x29160;
	len += FUNC16(s + len, "\n[%08x] (SLI_PKT_INT): %016llx\n", reg,
		       (u64)FUNC15(oct, reg));

	/*0x29180*/
	reg = CN23XX_SLI_OQ_WMARK;
	len += FUNC16(s + len, "\n[%08x] (SLI_PKT_OUTPUT_WMARK): %016llx\n",
		       reg, (u64)FUNC15(oct, reg));

	/*0x291E0*/
	reg = CN23XX_SLI_PKT_IOQ_RING_RST;
	len += FUNC16(s + len, "\n[%08x] (SLI_PKT_RING_RST): %016llx\n", reg,
		       (u64)FUNC15(oct, reg));

	/*0x29210*/
	reg = CN23XX_SLI_GBL_CONTROL;
	len += FUNC16(s + len,
		       "\n[%08x] (SLI_PKT_GBL_CONTROL): %016llx\n", reg,
		       (u64)FUNC15(oct, reg));

	/*0x29220*/
	reg = 0x29220;
	len += FUNC16(s + len, "\n[%08x] (SLI_PKT_BIST_STATUS): %016llx\n",
		       reg, (u64)FUNC15(oct, reg));

	/*PF only*/
	if (pf_num == 0) {
		/*0x29260*/
		reg = CN23XX_SLI_OUT_BP_EN_W1S;
		len += FUNC16(s + len,
			       "\n[%08x] (SLI_PKT_OUT_BP_EN_W1S):  %016llx\n",
			       reg, (u64)FUNC15(oct, reg));
	} else if (pf_num == 1) {
		/*0x29270*/
		reg = CN23XX_SLI_OUT_BP_EN2_W1S;
		len += FUNC16(s + len,
			       "\n[%08x] (SLI_PKT_OUT_BP_EN2_W1S): %016llx\n",
			       reg, (u64)FUNC15(oct, reg));
	}

	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC8(i);
		len +=
		    FUNC16(s + len, "\n[%08x] (SLI_PKT%d_OUT_SIZE): %016llx\n",
			    reg, i, (u64)FUNC15(oct, reg));
	}

	/*0x10040*/
	for (i = 0; i < CN23XX_MAX_INPUT_QUEUES; i++) {
		reg = FUNC2(i);
		len += FUNC16(s + len,
			       "\n[%08x] (SLI_PKT_IN_DONE%d_CNTS): %016llx\n",
			       reg, i, (u64)FUNC15(oct, reg));
	}

	/*0x10080*/
	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC9(i);
		len += FUNC16(s + len,
			       "\n[%08x] (SLI_PKT%d_SLIST_BAOFF_DBELL): %016llx\n",
			       reg, i, (u64)FUNC15(oct, reg));
	}

	/*0x10090*/
	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC13(i);
		len += FUNC16(
		    s + len, "\n[%08x] (SLI_PKT%d_SLIST_FIFO_RSIZE): %016llx\n",
		    reg, i, (u64)FUNC15(oct, reg));
	}

	/*0x10050*/
	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC11(i);
		len += FUNC16(
			s + len,
			"\n[%08x] (SLI_PKT%d__OUTPUT_CONTROL): %016llx\n",
			reg, i, (u64)FUNC15(oct, reg));
	}

	/*0x10070*/
	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC7(i);
		len += FUNC16(s + len,
			       "\n[%08x] (SLI_PKT%d_SLIST_BADDR): %016llx\n",
			       reg, i, (u64)FUNC15(oct, reg));
	}

	/*0x100a0*/
	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC12(i);
		len += FUNC16(s + len,
			       "\n[%08x] (SLI_PKT%d_INT_LEVELS): %016llx\n",
			       reg, i, (u64)FUNC15(oct, reg));
	}

	/*0x100b0*/
	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC10(i);
		len += FUNC16(s + len, "\n[%08x] (SLI_PKT%d_CNTS): %016llx\n",
			       reg, i, (u64)FUNC15(oct, reg));
	}

	/*0x100c0*/
	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		reg = 0x100c0 + i * CN23XX_OQ_OFFSET;
		len += FUNC16(s + len,
			       "\n[%08x] (SLI_PKT%d_ERROR_INFO): %016llx\n",
			       reg, i, (u64)FUNC15(oct, reg));

		/*0x10000*/
		for (i = 0; i < CN23XX_MAX_INPUT_QUEUES; i++) {
			reg = FUNC3(i);
			len += FUNC16(
				s + len,
				"\n[%08x] (SLI_PKT%d_INPUT_CONTROL): %016llx\n",
				reg, i, (u64)FUNC15(oct, reg));
		}

		/*0x10010*/
		for (i = 0; i < CN23XX_MAX_INPUT_QUEUES; i++) {
			reg = FUNC0(i);
			len += FUNC16(
			    s + len,
			    "\n[%08x] (SLI_PKT%d_INSTR_BADDR): %016llx\n", reg,
			    i, (u64)FUNC15(oct, reg));
		}

		/*0x10020*/
		for (i = 0; i < CN23XX_MAX_INPUT_QUEUES; i++) {
			reg = FUNC1(i);
			len += FUNC16(
			    s + len,
			    "\n[%08x] (SLI_PKT%d_INSTR_BAOFF_DBELL): %016llx\n",
			    reg, i, (u64)FUNC15(oct, reg));
		}

		/*0x10030*/
		for (i = 0; i < CN23XX_MAX_INPUT_QUEUES; i++) {
			reg = FUNC4(i);
			len += FUNC16(
			    s + len,
			    "\n[%08x] (SLI_PKT%d_INSTR_FIFO_RSIZE): %016llx\n",
			    reg, i, (u64)FUNC15(oct, reg));
		}

		/*0x10040*/
		for (i = 0; i < CN23XX_MAX_INPUT_QUEUES; i++)
			reg = FUNC2(i);
		len += FUNC16(s + len,
			       "\n[%08x] (SLI_PKT_IN_DONE%d_CNTS): %016llx\n",
			       reg, i, (u64)FUNC15(oct, reg));
	}

	return len;
}