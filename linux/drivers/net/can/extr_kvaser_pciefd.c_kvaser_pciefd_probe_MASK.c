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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct kvaser_pciefd {scalar_t__ reg_base; struct pci_dev* pci; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KVASER_PCIEFD_DRV_NAME ; 
 scalar_t__ KVASER_PCIEFD_IEN_REG ; 
 int KVASER_PCIEFD_IRQ_ALL_MSK ; 
 scalar_t__ KVASER_PCIEFD_IRQ_REG ; 
 int KVASER_PCIEFD_SRB_CMD_RDB0 ; 
 int KVASER_PCIEFD_SRB_CMD_RDB1 ; 
 scalar_t__ KVASER_PCIEFD_SRB_CMD_REG ; 
 scalar_t__ KVASER_PCIEFD_SRB_CTRL_REG ; 
 scalar_t__ KVASER_PCIEFD_SRB_IEN_REG ; 
 int KVASER_PCIEFD_SRB_IRQ_DOF0 ; 
 int KVASER_PCIEFD_SRB_IRQ_DOF1 ; 
 int KVASER_PCIEFD_SRB_IRQ_DPD0 ; 
 int KVASER_PCIEFD_SRB_IRQ_DPD1 ; 
 int KVASER_PCIEFD_SRB_IRQ_DUF0 ; 
 int KVASER_PCIEFD_SRB_IRQ_DUF1 ; 
 scalar_t__ KVASER_PCIEFD_SRB_IRQ_REG ; 
 struct kvaser_pciefd* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kvaser_pciefd*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  kvaser_pciefd_irq_handler ; 
 int FUNC3 (struct kvaser_pciefd*) ; 
 int FUNC4 (struct kvaser_pciefd*) ; 
 int FUNC5 (struct kvaser_pciefd*) ; 
 int FUNC6 (struct kvaser_pciefd*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvaser_pciefd*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 scalar_t__ FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct kvaser_pciefd*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvaser_pciefd*) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev,
			       const struct pci_device_id *id)
{
	int err;
	struct kvaser_pciefd *pcie;

	pcie = FUNC0(&pdev->dev, sizeof(*pcie), GFP_KERNEL);
	if (!pcie)
		return -ENOMEM;

	FUNC15(pdev, pcie);
	pcie->pci = pdev;

	err = FUNC10(pdev);
	if (err)
		return err;

	err = FUNC14(pdev, KVASER_PCIEFD_DRV_NAME);
	if (err)
		goto err_disable_pci;

	pcie->reg_base = FUNC11(pdev, 0, 0);
	if (!pcie->reg_base) {
		err = -ENOMEM;
		goto err_release_regions;
	}

	err = FUNC4(pcie);
	if (err)
		goto err_pci_iounmap;

	err = FUNC6(pcie);
	if (err)
		goto err_pci_iounmap;

	FUNC16(pdev);

	err = FUNC5(pcie);
	if (err)
		goto err_teardown_can_ctrls;

	FUNC2(KVASER_PCIEFD_SRB_IRQ_DPD0 | KVASER_PCIEFD_SRB_IRQ_DPD1,
		  pcie->reg_base + KVASER_PCIEFD_SRB_IRQ_REG);

	FUNC2(KVASER_PCIEFD_SRB_IRQ_DPD0 | KVASER_PCIEFD_SRB_IRQ_DPD1 |
		  KVASER_PCIEFD_SRB_IRQ_DOF0 | KVASER_PCIEFD_SRB_IRQ_DOF1 |
		  KVASER_PCIEFD_SRB_IRQ_DUF0 | KVASER_PCIEFD_SRB_IRQ_DUF1,
		  pcie->reg_base + KVASER_PCIEFD_SRB_IEN_REG);

	/* Reset IRQ handling, expected to be off before */
	FUNC2(KVASER_PCIEFD_IRQ_ALL_MSK,
		  pcie->reg_base + KVASER_PCIEFD_IRQ_REG);
	FUNC2(KVASER_PCIEFD_IRQ_ALL_MSK,
		  pcie->reg_base + KVASER_PCIEFD_IEN_REG);

	/* Ready the DMA buffers */
	FUNC2(KVASER_PCIEFD_SRB_CMD_RDB0,
		  pcie->reg_base + KVASER_PCIEFD_SRB_CMD_REG);
	FUNC2(KVASER_PCIEFD_SRB_CMD_RDB1,
		  pcie->reg_base + KVASER_PCIEFD_SRB_CMD_REG);

	err = FUNC17(pcie->pci->irq, kvaser_pciefd_irq_handler,
			  IRQF_SHARED, KVASER_PCIEFD_DRV_NAME, pcie);
	if (err)
		goto err_teardown_can_ctrls;

	err = FUNC3(pcie);
	if (err)
		goto err_free_irq;

	return 0;

err_free_irq:
	FUNC1(pcie->pci->irq, pcie);

err_teardown_can_ctrls:
	FUNC7(pcie);
	FUNC2(0, pcie->reg_base + KVASER_PCIEFD_SRB_CTRL_REG);
	FUNC8(pdev);

err_pci_iounmap:
	FUNC12(pdev, pcie->reg_base);

err_release_regions:
	FUNC13(pdev);

err_disable_pci:
	FUNC9(pdev);

	return err;
}