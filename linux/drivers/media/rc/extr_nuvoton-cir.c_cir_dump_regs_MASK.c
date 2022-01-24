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
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_CC ; 
 int /*<<< orphan*/  CIR_CP ; 
 int /*<<< orphan*/  CIR_FCCH ; 
 int /*<<< orphan*/  CIR_FCCL ; 
 int /*<<< orphan*/  CIR_FIFOCON ; 
 int /*<<< orphan*/  CIR_IRCON ; 
 int /*<<< orphan*/  CIR_IREN ; 
 int /*<<< orphan*/  CIR_IRFIFOSTS ; 
 int /*<<< orphan*/  CIR_IRFSM ; 
 int /*<<< orphan*/  CIR_IRSTS ; 
 int /*<<< orphan*/  CIR_RXFCONT ; 
 int /*<<< orphan*/  CIR_SLCH ; 
 int /*<<< orphan*/  CIR_SLCL ; 
 int /*<<< orphan*/  CIR_SRXFIFO ; 
 int /*<<< orphan*/  CIR_STXFIFO ; 
 int /*<<< orphan*/  CIR_TXFCONT ; 
 int /*<<< orphan*/  CR_CIR_BASE_ADDR_HI ; 
 int /*<<< orphan*/  CR_CIR_BASE_ADDR_LO ; 
 int /*<<< orphan*/  CR_CIR_IRQ_RSRC ; 
 int /*<<< orphan*/  CR_LOGICAL_DEV_EN ; 
 int /*<<< orphan*/  LOGICAL_DEV_CIR ; 
 int NVT_DRIVER_NAME ; 
 int FUNC0 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(struct nvt_dev *nvt)
{
	FUNC3(nvt);
	FUNC4(nvt, LOGICAL_DEV_CIR);

	FUNC5("%s: Dump CIR logical device registers:\n", NVT_DRIVER_NAME);
	FUNC5(" * CR CIR ACTIVE :   0x%x\n",
		FUNC1(nvt, CR_LOGICAL_DEV_EN));
	FUNC5(" * CR CIR BASE ADDR: 0x%x\n",
		(FUNC1(nvt, CR_CIR_BASE_ADDR_HI) << 8) |
		FUNC1(nvt, CR_CIR_BASE_ADDR_LO));
	FUNC5(" * CR CIR IRQ NUM:   0x%x\n",
		FUNC1(nvt, CR_CIR_IRQ_RSRC));

	FUNC2(nvt);

	FUNC5("%s: Dump CIR registers:\n", NVT_DRIVER_NAME);
	FUNC5(" * IRCON:     0x%x\n", FUNC0(nvt, CIR_IRCON));
	FUNC5(" * IRSTS:     0x%x\n", FUNC0(nvt, CIR_IRSTS));
	FUNC5(" * IREN:      0x%x\n", FUNC0(nvt, CIR_IREN));
	FUNC5(" * RXFCONT:   0x%x\n", FUNC0(nvt, CIR_RXFCONT));
	FUNC5(" * CP:        0x%x\n", FUNC0(nvt, CIR_CP));
	FUNC5(" * CC:        0x%x\n", FUNC0(nvt, CIR_CC));
	FUNC5(" * SLCH:      0x%x\n", FUNC0(nvt, CIR_SLCH));
	FUNC5(" * SLCL:      0x%x\n", FUNC0(nvt, CIR_SLCL));
	FUNC5(" * FIFOCON:   0x%x\n", FUNC0(nvt, CIR_FIFOCON));
	FUNC5(" * IRFIFOSTS: 0x%x\n", FUNC0(nvt, CIR_IRFIFOSTS));
	FUNC5(" * SRXFIFO:   0x%x\n", FUNC0(nvt, CIR_SRXFIFO));
	FUNC5(" * TXFCONT:   0x%x\n", FUNC0(nvt, CIR_TXFCONT));
	FUNC5(" * STXFIFO:   0x%x\n", FUNC0(nvt, CIR_STXFIFO));
	FUNC5(" * FCCH:      0x%x\n", FUNC0(nvt, CIR_FCCH));
	FUNC5(" * FCCL:      0x%x\n", FUNC0(nvt, CIR_FCCL));
	FUNC5(" * IRFSM:     0x%x\n", FUNC0(nvt, CIR_IRFSM));
}