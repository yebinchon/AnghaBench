#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  long u32 ;
struct octeon_device {TYPE_1__* pci_dev; int /*<<< orphan*/  pf_num; int /*<<< orphan*/  pcie_port; scalar_t__ chip; } ;
struct octeon_cn23xx_pf {scalar_t__ intr_sum_reg64; scalar_t__ intr_enb_reg64; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 long CN23XX_CONFIG_PCIE_DEVCTL ; 
 int /*<<< orphan*/  CN23XX_DPI_CTL ; 
 int /*<<< orphan*/  CN23XX_DPI_DMA_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int CN23XX_MAX_INPUT_QUEUES ; 
 int CN23XX_MAX_MACS ; 
 int CN23XX_MAX_OUTPUT_QUEUES ; 
 int /*<<< orphan*/  CN23XX_RST_SOFT_RST ; 
 long FUNC3 (int) ; 
 long FUNC4 (int) ; 
 long FUNC5 (int) ; 
 long FUNC6 (int) ; 
 long FUNC7 (int) ; 
 long FUNC8 (int) ; 
 long FUNC9 (int) ; 
 long FUNC10 (int) ; 
 long FUNC11 (int) ; 
 long FUNC12 (int) ; 
 long FUNC13 (int) ; 
 long FUNC14 (int) ; 
 long CN23XX_SLI_OQ_WMARK ; 
 long CN23XX_SLI_PKT_CNT_INT ; 
 long CN23XX_SLI_PKT_IOQ_RING_RST ; 
 long FUNC15 (int,int /*<<< orphan*/ ) ; 
 long CN23XX_SLI_PKT_TIME_INT ; 
 long FUNC16 (int /*<<< orphan*/ ) ; 
 long CN23XX_SLI_SCRATCH1 ; 
 long CN23XX_WIN_WR_MASK_REG ; 
 int /*<<< orphan*/  FUNC17 (long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC19 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 long FUNC20 (struct octeon_device*,long) ; 
 long FUNC21 (struct octeon_device*,long) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,long,long*) ; 
 long FUNC23 (scalar_t__) ; 

void FUNC24(struct octeon_device *oct)
{
	int i = 0;
	u32 regval = 0;
	struct octeon_cn23xx_pf *cn23xx = (struct octeon_cn23xx_pf *)oct->chip;

	/*In cn23xx_soft_reset*/
	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%llx\n",
		"CN23XX_WIN_WR_MASK_REG", FUNC17(CN23XX_WIN_WR_MASK_REG),
		FUNC17(FUNC21(oct, CN23XX_WIN_WR_MASK_REG)));
	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"CN23XX_SLI_SCRATCH1", FUNC17(CN23XX_SLI_SCRATCH1),
		FUNC17(FUNC21(oct, CN23XX_SLI_SCRATCH1)));
	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"CN23XX_RST_SOFT_RST", CN23XX_RST_SOFT_RST,
		FUNC19(oct, CN23XX_RST_SOFT_RST));

	/*In cn23xx_set_dpi_regs*/
	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"CN23XX_DPI_DMA_CONTROL", CN23XX_DPI_DMA_CONTROL,
		FUNC19(oct, CN23XX_DPI_DMA_CONTROL));

	for (i = 0; i < 6; i++) {
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_DPI_DMA_ENG_ENB", i,
			FUNC1(i),
			FUNC19(oct, FUNC1(i)));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_DPI_DMA_ENG_BUF", i,
			FUNC0(i),
			FUNC19(oct, FUNC0(i)));
	}

	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n", "CN23XX_DPI_CTL",
		CN23XX_DPI_CTL, FUNC19(oct, CN23XX_DPI_CTL));

	/*In cn23xx_setup_pcie_mps and cn23xx_setup_pcie_mrrs */
	FUNC22(oct->pci_dev, CN23XX_CONFIG_PCIE_DEVCTL, &regval);
	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"CN23XX_CONFIG_PCIE_DEVCTL",
		FUNC17(CN23XX_CONFIG_PCIE_DEVCTL), FUNC17(regval));

	FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
		"CN23XX_DPI_SLI_PRTX_CFG", oct->pcie_port,
		FUNC2(oct->pcie_port),
		FUNC19(oct, FUNC2(oct->pcie_port)));

	/*In cn23xx_specific_regs_setup */
	FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
		"CN23XX_SLI_S2M_PORTX_CTL", oct->pcie_port,
		FUNC17(FUNC16(oct->pcie_port)),
		FUNC17(FUNC21(
			oct, FUNC16(oct->pcie_port))));

	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"CN23XX_SLI_RING_RST", FUNC17(CN23XX_SLI_PKT_IOQ_RING_RST),
		(u64)FUNC21(oct, CN23XX_SLI_PKT_IOQ_RING_RST));

	/*In cn23xx_setup_global_mac_regs*/
	for (i = 0; i < CN23XX_MAX_MACS; i++) {
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_PKT_MAC_RINFO64", i,
			FUNC17(FUNC15(i, oct->pf_num)),
			FUNC17(FUNC21
				(oct, FUNC15
					(i, oct->pf_num))));
	}

	/*In cn23xx_setup_global_input_regs*/
	for (i = 0; i < CN23XX_MAX_INPUT_QUEUES; i++) {
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_IQ_PKT_CONTROL64", i,
			FUNC17(FUNC6(i)),
			FUNC17(FUNC21
				(oct, FUNC6(i))));
	}

	/*In cn23xx_setup_global_output_regs*/
	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"CN23XX_SLI_OQ_WMARK", FUNC17(CN23XX_SLI_OQ_WMARK),
		FUNC17(FUNC21(oct, CN23XX_SLI_OQ_WMARK)));

	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_OQ_PKT_CONTROL", i,
			FUNC17(FUNC12(i)),
			FUNC17(FUNC20(
				oct, FUNC12(i))));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_OQ_PKT_INT_LEVELS", i,
			FUNC17(FUNC13(i)),
			FUNC17(FUNC21(
				oct, FUNC13(i))));
	}

	/*In cn23xx_enable_interrupt and cn23xx_disable_interrupt*/
	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"cn23xx->intr_enb_reg64",
		FUNC17((long)(cn23xx->intr_enb_reg64)),
		FUNC17(FUNC23(cn23xx->intr_enb_reg64)));

	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"cn23xx->intr_sum_reg64",
		FUNC17((long)(cn23xx->intr_sum_reg64)),
		FUNC17(FUNC23(cn23xx->intr_sum_reg64)));

	/*In cn23xx_setup_iq_regs*/
	for (i = 0; i < CN23XX_MAX_INPUT_QUEUES; i++) {
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_IQ_BASE_ADDR64", i,
			FUNC17(FUNC3(i)),
			FUNC17(FUNC21(
				oct, FUNC3(i))));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_IQ_SIZE", i,
			FUNC17(FUNC7(i)),
			FUNC17(FUNC20
				(oct, FUNC7(i))));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_IQ_DOORBELL", i,
			FUNC17(FUNC4(i)),
			FUNC17(FUNC21(
				oct, FUNC4(i))));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_IQ_INSTR_COUNT64", i,
			FUNC17(FUNC5(i)),
			FUNC17(FUNC21(
				oct, FUNC5(i))));
	}

	/*In cn23xx_setup_oq_regs*/
	for (i = 0; i < CN23XX_MAX_OUTPUT_QUEUES; i++) {
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_OQ_BASE_ADDR64", i,
			FUNC17(FUNC8(i)),
			FUNC17(FUNC21(
				oct, FUNC8(i))));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_OQ_SIZE", i,
			FUNC17(FUNC14(i)),
			FUNC17(FUNC20
				(oct, FUNC14(i))));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_OQ_BUFF_INFO_SIZE", i,
			FUNC17(FUNC9(i)),
			FUNC17(FUNC20(
				oct, FUNC9(i))));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_OQ_PKTS_SENT", i,
			FUNC17(FUNC11(i)),
			FUNC17(FUNC21(
				oct, FUNC11(i))));
		FUNC18(&oct->pci_dev->dev, "%s(%d)[%llx] : 0x%016llx\n",
			"CN23XX_SLI_OQ_PKTS_CREDIT", i,
			FUNC17(FUNC10(i)),
			FUNC17(FUNC21(
				oct, FUNC10(i))));
	}

	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"CN23XX_SLI_PKT_TIME_INT",
		FUNC17(CN23XX_SLI_PKT_TIME_INT),
		FUNC17(FUNC21(oct, CN23XX_SLI_PKT_TIME_INT)));
	FUNC18(&oct->pci_dev->dev, "%s[%llx] : 0x%016llx\n",
		"CN23XX_SLI_PKT_CNT_INT",
		FUNC17(CN23XX_SLI_PKT_CNT_INT),
		FUNC17(FUNC21(oct, CN23XX_SLI_PKT_CNT_INT)));
}