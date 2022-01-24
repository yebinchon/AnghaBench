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
typedef  int /*<<< orphan*/  u8 ;
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_WAKE_FIFOCON ; 
 int /*<<< orphan*/  CIR_WAKE_FIFO_CMP_DEEP ; 
 int /*<<< orphan*/  CIR_WAKE_FIFO_CMP_TOL ; 
 int /*<<< orphan*/  CIR_WAKE_FIFO_COUNT ; 
 int /*<<< orphan*/  CIR_WAKE_FIFO_IGNORE ; 
 int /*<<< orphan*/  CIR_WAKE_IRCON ; 
 int /*<<< orphan*/  CIR_WAKE_IREN ; 
 int /*<<< orphan*/  CIR_WAKE_IRFSM ; 
 int /*<<< orphan*/  CIR_WAKE_IRSTS ; 
 int /*<<< orphan*/  CIR_WAKE_RD_FIFO_ONLY ; 
 int /*<<< orphan*/  CIR_WAKE_RD_FIFO_ONLY_IDX ; 
 int /*<<< orphan*/  CIR_WAKE_SAMPLE_RX_FIFO ; 
 int /*<<< orphan*/  CIR_WAKE_SLCH ; 
 int /*<<< orphan*/  CIR_WAKE_SLCL ; 
 int /*<<< orphan*/  CIR_WAKE_SRXFSTS ; 
 int /*<<< orphan*/  CIR_WAKE_WR_FIFO_DATA ; 
 int /*<<< orphan*/  CR_CIR_BASE_ADDR_HI ; 
 int /*<<< orphan*/  CR_CIR_BASE_ADDR_LO ; 
 int /*<<< orphan*/  CR_CIR_IRQ_RSRC ; 
 int /*<<< orphan*/  CR_LOGICAL_DEV_EN ; 
 int /*<<< orphan*/  LOGICAL_DEV_CIR_WAKE ; 
 int /*<<< orphan*/  NVT_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(struct nvt_dev *nvt)
{
	u8 i, fifo_len;

	FUNC3(nvt);
	FUNC4(nvt, LOGICAL_DEV_CIR_WAKE);

	FUNC6("%s: Dump CIR WAKE logical device registers:\n",
		NVT_DRIVER_NAME);
	FUNC6(" * CR CIR WAKE ACTIVE :   0x%x\n",
		FUNC1(nvt, CR_LOGICAL_DEV_EN));
	FUNC6(" * CR CIR WAKE BASE ADDR: 0x%x\n",
		(FUNC1(nvt, CR_CIR_BASE_ADDR_HI) << 8) |
		FUNC1(nvt, CR_CIR_BASE_ADDR_LO));
	FUNC6(" * CR CIR WAKE IRQ NUM:   0x%x\n",
		FUNC1(nvt, CR_CIR_IRQ_RSRC));

	FUNC2(nvt);

	FUNC6("%s: Dump CIR WAKE registers\n", NVT_DRIVER_NAME);
	FUNC6(" * IRCON:          0x%x\n",
		FUNC0(nvt, CIR_WAKE_IRCON));
	FUNC6(" * IRSTS:          0x%x\n",
		FUNC0(nvt, CIR_WAKE_IRSTS));
	FUNC6(" * IREN:           0x%x\n",
		FUNC0(nvt, CIR_WAKE_IREN));
	FUNC6(" * FIFO CMP DEEP:  0x%x\n",
		FUNC0(nvt, CIR_WAKE_FIFO_CMP_DEEP));
	FUNC6(" * FIFO CMP TOL:   0x%x\n",
		FUNC0(nvt, CIR_WAKE_FIFO_CMP_TOL));
	FUNC6(" * FIFO COUNT:     0x%x\n",
		FUNC0(nvt, CIR_WAKE_FIFO_COUNT));
	FUNC6(" * SLCH:           0x%x\n",
		FUNC0(nvt, CIR_WAKE_SLCH));
	FUNC6(" * SLCL:           0x%x\n",
		FUNC0(nvt, CIR_WAKE_SLCL));
	FUNC6(" * FIFOCON:        0x%x\n",
		FUNC0(nvt, CIR_WAKE_FIFOCON));
	FUNC6(" * SRXFSTS:        0x%x\n",
		FUNC0(nvt, CIR_WAKE_SRXFSTS));
	FUNC6(" * SAMPLE RX FIFO: 0x%x\n",
		FUNC0(nvt, CIR_WAKE_SAMPLE_RX_FIFO));
	FUNC6(" * WR FIFO DATA:   0x%x\n",
		FUNC0(nvt, CIR_WAKE_WR_FIFO_DATA));
	FUNC6(" * RD FIFO ONLY:   0x%x\n",
		FUNC0(nvt, CIR_WAKE_RD_FIFO_ONLY));
	FUNC6(" * RD FIFO ONLY IDX: 0x%x\n",
		FUNC0(nvt, CIR_WAKE_RD_FIFO_ONLY_IDX));
	FUNC6(" * FIFO IGNORE:    0x%x\n",
		FUNC0(nvt, CIR_WAKE_FIFO_IGNORE));
	FUNC6(" * IRFSM:          0x%x\n",
		FUNC0(nvt, CIR_WAKE_IRFSM));

	fifo_len = FUNC0(nvt, CIR_WAKE_FIFO_COUNT);
	FUNC6("%s: Dump CIR WAKE FIFO (len %d)\n", NVT_DRIVER_NAME, fifo_len);
	FUNC6("* Contents =");
	for (i = 0; i < fifo_len; i++)
		FUNC5(" %02x",
			FUNC0(nvt, CIR_WAKE_RD_FIFO_ONLY));
	FUNC5("\n");
}