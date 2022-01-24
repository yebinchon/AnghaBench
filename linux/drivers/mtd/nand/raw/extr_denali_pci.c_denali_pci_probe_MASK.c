#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct denali_controller {int clk_rate; int clk_x_rate; int nbanks; void* reg; void* host; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ecc_caps; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  options; } ;
struct TYPE_5__ {TYPE_1__ ecc; } ;
struct denali_chip {int nsels; TYPE_3__* sels; TYPE_2__ chip; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_6__ {int bank; } ;

/* Variables and functions */
 int /*<<< orphan*/  DENALI_NAND_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ INTEL_CE4100 ; 
 int /*<<< orphan*/  NAND_ECC_MAXIMIZE ; 
 int FUNC0 (struct denali_controller*,struct denali_chip*) ; 
 int FUNC1 (struct denali_controller*) ; 
 int /*<<< orphan*/  denali_pci_ecc_caps ; 
 int /*<<< orphan*/  FUNC2 (struct denali_controller*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (struct pci_dev*,int) ; 
 scalar_t__ FUNC9 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct denali_controller*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  sels ; 
 int FUNC13 (struct denali_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *dev, const struct pci_device_id *id)
{
	resource_size_t csr_base, mem_base;
	unsigned long csr_len, mem_len;
	struct denali_controller *denali;
	struct denali_chip *dchip;
	int nsels, ret, i;

	denali = FUNC4(&dev->dev, sizeof(*denali), GFP_KERNEL);
	if (!denali)
		return -ENOMEM;

	ret = FUNC12(dev);
	if (ret) {
		FUNC3(&dev->dev, "Spectra: pci_enable_device failed.\n");
		return ret;
	}

	if (id->driver_data == INTEL_CE4100) {
		mem_base = FUNC9(dev, 0);
		mem_len = FUNC8(dev, 1);
		csr_base = FUNC9(dev, 1);
		csr_len = FUNC8(dev, 1);
	} else {
		csr_base = FUNC9(dev, 0);
		csr_len = FUNC8(dev, 0);
		mem_base = FUNC9(dev, 1);
		mem_len = FUNC8(dev, 1);
		if (!mem_len) {
			mem_base = csr_base + csr_len;
			mem_len = csr_len;
		}
	}

	FUNC11(dev);
	denali->dev = &dev->dev;
	denali->irq = dev->irq;
	denali->ecc_caps = &denali_pci_ecc_caps;
	denali->clk_rate = 50000000;		/* 50 MHz */
	denali->clk_x_rate = 200000000;		/* 200 MHz */

	ret = FUNC7(dev, DENALI_NAND_NAME);
	if (ret) {
		FUNC3(&dev->dev, "Spectra: Unable to request memory regions\n");
		return ret;
	}

	denali->reg = FUNC5(csr_base, csr_len);
	if (!denali->reg) {
		FUNC3(&dev->dev, "Spectra: Unable to remap memory region\n");
		return -ENOMEM;
	}

	denali->host = FUNC5(mem_base, mem_len);
	if (!denali->host) {
		FUNC3(&dev->dev, "Spectra: ioremap_nocache failed!");
		ret = -ENOMEM;
		goto out_unmap_reg;
	}

	ret = FUNC1(denali);
	if (ret)
		goto out_unmap_host;

	nsels = denali->nbanks;

	dchip = FUNC4(denali->dev, FUNC13(dchip, sels, nsels),
			     GFP_KERNEL);
	if (!dchip) {
		ret = -ENOMEM;
		goto out_remove_denali;
	}

	dchip->chip.ecc.options |= NAND_ECC_MAXIMIZE;

	dchip->nsels = nsels;

	for (i = 0; i < nsels; i++)
		dchip->sels[i].bank = i;

	ret = FUNC0(denali, dchip);
	if (ret)
		goto out_remove_denali;

	FUNC10(dev, denali);

	return 0;

out_remove_denali:
	FUNC2(denali);
out_unmap_host:
	FUNC6(denali->host);
out_unmap_reg:
	FUNC6(denali->reg);
	return ret;
}