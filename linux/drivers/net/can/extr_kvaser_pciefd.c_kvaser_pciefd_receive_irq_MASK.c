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
typedef  int u32 ;
struct kvaser_pciefd {scalar_t__ reg_base; TYPE_1__* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int KVASER_PCIEFD_SRB_CMD_RDB0 ; 
 int KVASER_PCIEFD_SRB_CMD_RDB1 ; 
 scalar_t__ KVASER_PCIEFD_SRB_CMD_REG ; 
 int KVASER_PCIEFD_SRB_IRQ_DOF0 ; 
 int KVASER_PCIEFD_SRB_IRQ_DOF1 ; 
 int KVASER_PCIEFD_SRB_IRQ_DPD0 ; 
 int KVASER_PCIEFD_SRB_IRQ_DPD1 ; 
 int KVASER_PCIEFD_SRB_IRQ_DUF0 ; 
 int KVASER_PCIEFD_SRB_IRQ_DUF1 ; 
 scalar_t__ KVASER_PCIEFD_SRB_IRQ_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct kvaser_pciefd*,int) ; 

__attribute__((used)) static int FUNC4(struct kvaser_pciefd *pcie)
{
	u32 irq;

	irq = FUNC1(pcie->reg_base + KVASER_PCIEFD_SRB_IRQ_REG);
	if (irq & KVASER_PCIEFD_SRB_IRQ_DPD0) {
		FUNC3(pcie, 0);
		/* Reset DMA buffer 0 */
		FUNC2(KVASER_PCIEFD_SRB_CMD_RDB0,
			  pcie->reg_base + KVASER_PCIEFD_SRB_CMD_REG);
	}

	if (irq & KVASER_PCIEFD_SRB_IRQ_DPD1) {
		FUNC3(pcie, 1);
		/* Reset DMA buffer 1 */
		FUNC2(KVASER_PCIEFD_SRB_CMD_RDB1,
			  pcie->reg_base + KVASER_PCIEFD_SRB_CMD_REG);
	}

	if (irq & KVASER_PCIEFD_SRB_IRQ_DOF0 ||
	    irq & KVASER_PCIEFD_SRB_IRQ_DOF1 ||
	    irq & KVASER_PCIEFD_SRB_IRQ_DUF0 ||
	    irq & KVASER_PCIEFD_SRB_IRQ_DUF1)
		FUNC0(&pcie->pci->dev, "DMA IRQ error 0x%08X\n", irq);

	FUNC2(irq, pcie->reg_base + KVASER_PCIEFD_SRB_IRQ_REG);
	return 0;
}