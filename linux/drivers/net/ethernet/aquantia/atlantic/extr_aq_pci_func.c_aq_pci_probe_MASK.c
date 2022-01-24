#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct aq_nic_s {int irqvecs; TYPE_1__* aq_hw; struct pci_dev* pdev; int /*<<< orphan*/  aq_hw_ops; int /*<<< orphan*/  fwreq_mutex; } ;
typedef  unsigned int resource_size_t ;
struct TYPE_7__ {TYPE_3__* aq_hw_caps; } ;
struct TYPE_6__ {int /*<<< orphan*/  msix_irqs; } ;
struct TYPE_5__ {int /*<<< orphan*/  mmio; TYPE_4__* aq_nic_cfg; } ;

/* Variables and functions */
 scalar_t__ AQ_CFG_VECS_DEF ; 
 scalar_t__ AQ_HW_SERVICE_IRQS ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_MEM ; 
 int PCI_IRQ_LEGACY ; 
 int PCI_IRQ_MSI ; 
 int PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_nic_s*) ; 
 TYPE_4__* FUNC5 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_nic_s*) ; 
 int FUNC7 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_nic_s*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 TYPE_1__* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct aq_nic_s* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (struct pci_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pci_dev*,int) ; 
 unsigned int FUNC25 (struct pci_dev*,int) ; 
 unsigned int FUNC26 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*,struct aq_nic_s*) ; 

__attribute__((used)) static int FUNC28(struct pci_dev *pdev,
			const struct pci_device_id *pci_id)
{
	struct aq_nic_s *self;
	int err;
	struct net_device *ndev;
	resource_size_t mmio_pa;
	u32 bar;
	u32 numvecs;

	err = FUNC22(pdev);
	if (err)
		return err;

	err = FUNC9(pdev);
	if (err)
		goto err_pci_func;

	ndev = FUNC2();
	if (!ndev) {
		err = -ENOMEM;
		goto err_ndev;
	}

	self = FUNC18(ndev);
	self->pdev = pdev;
	FUNC0(ndev, &pdev->dev);
	FUNC27(pdev, self);

	FUNC17(&self->fwreq_mutex);

	err = FUNC10(pdev, &self->aq_hw_ops,
					&FUNC5(self)->aq_hw_caps);
	if (err)
		goto err_ioremap;

	self->aq_hw = FUNC15(sizeof(*self->aq_hw), GFP_KERNEL);
	if (!self->aq_hw) {
		err = -ENOMEM;
		goto err_ioremap;
	}
	self->aq_hw->aq_nic_cfg = FUNC5(self);

	for (bar = 0; bar < 4; ++bar) {
		if (IORESOURCE_MEM & FUNC24(pdev, bar)) {
			resource_size_t reg_sz;

			mmio_pa = FUNC26(pdev, bar);
			if (mmio_pa == 0U) {
				err = -EIO;
				goto err_free_aq_hw;
			}

			reg_sz = FUNC25(pdev, bar);
			if ((reg_sz <= 24 /*ATL_REGS_SIZE*/)) {
				err = -EIO;
				goto err_free_aq_hw;
			}

			self->aq_hw->mmio = FUNC12(mmio_pa, reg_sz);
			if (!self->aq_hw->mmio) {
				err = -EIO;
				goto err_free_aq_hw;
			}
			break;
		}
	}

	if (bar == 4) {
		err = -EIO;
		goto err_free_aq_hw;
	}

	numvecs = FUNC16((u8)AQ_CFG_VECS_DEF,
		      FUNC5(self)->aq_hw_caps->msix_irqs);
	numvecs = FUNC16(numvecs, FUNC19());
	numvecs += AQ_HW_SERVICE_IRQS;
	/*enable interrupts */
#if !AQ_CFG_FORCE_LEGACY_INT
	err = FUNC20(self->pdev, 1, numvecs,
				    PCI_IRQ_MSIX | PCI_IRQ_MSI |
				    PCI_IRQ_LEGACY);

	if (err < 0)
		goto err_hwinit;
	numvecs = err;
#endif
	self->irqvecs = numvecs;

	/* net device init */
	FUNC3(self);

	FUNC6(self);

	err = FUNC7(self);
	if (err < 0)
		goto err_register;

	FUNC1(ndev);

	return 0;

err_register:
	FUNC4(self);
	FUNC8(self);
err_hwinit:
	FUNC13(self->aq_hw->mmio);
err_free_aq_hw:
	FUNC14(self->aq_hw);
err_ioremap:
	FUNC11(ndev);
err_ndev:
	FUNC23(pdev);
err_pci_func:
	FUNC21(pdev);
	return err;
}