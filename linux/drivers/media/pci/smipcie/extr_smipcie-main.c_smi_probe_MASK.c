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
struct smi_dev {int /*<<< orphan*/  lmmio; int /*<<< orphan*/ * ts_port; struct smi_cfg_info* info; int /*<<< orphan*/  ir; struct pci_dev* pci_dev; int /*<<< orphan*/  nr; } ;
struct smi_cfg_info {scalar_t__ ts_0; scalar_t__ ts_1; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smi_dev*) ; 
 struct smi_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct smi_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct smi_dev*) ; 
 int FUNC16 (struct smi_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct smi_dev*) ; 
 int FUNC18 (struct smi_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct smi_dev*) ; 
 int FUNC20 (struct smi_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smi_irq_handler ; 
 int FUNC22 (struct smi_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct smi_dev *dev;
	int ret = -ENOMEM;

	if (FUNC7(pdev) < 0)
		return -ENODEV;

	dev = FUNC5(sizeof(struct smi_dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto err_pci_disable_device;
	}

	dev->pci_dev = pdev;
	FUNC13(pdev, dev);
	dev->info = (struct smi_cfg_info *) id->driver_data;
	FUNC1(&dev->pci_dev->dev,
		"card detected: %s\n", dev->info->name);

	dev->nr = dev->info->type;
	dev->lmmio = FUNC2(FUNC11(dev->pci_dev, 0),
			    FUNC10(dev->pci_dev, 0));
	if (!dev->lmmio) {
		ret = -ENOMEM;
		goto err_kfree;
	}

	/* should we set to 32bit DMA? */
	ret = FUNC12(pdev, FUNC0(32));
	if (ret < 0)
		goto err_pci_iounmap;

	FUNC14(pdev);

	ret = FUNC16(dev);
	if (ret < 0)
		goto err_pci_iounmap;

	ret = FUNC18(dev);
	if (ret < 0)
		goto err_pci_iounmap;

	if (dev->info->ts_0) {
		ret = FUNC22(dev, &dev->ts_port[0], 0);
		if (ret < 0)
			goto err_del_i2c_adaptor;
	}

	if (dev->info->ts_1) {
		ret = FUNC22(dev, &dev->ts_port[1], 1);
		if (ret < 0)
			goto err_del_port0_attach;
	}

	ret = FUNC20(dev);
	if (ret < 0)
		goto err_del_port1_attach;

#ifdef CONFIG_PCI_MSI /* to do msi interrupt.???*/
	if (pci_msi_enabled())
		ret = pci_enable_msi(dev->pci_dev);
	if (ret)
		dev_info(&dev->pci_dev->dev, "MSI not available.\n");
#endif

	ret = FUNC15(dev->pci_dev->irq, smi_irq_handler,
			   IRQF_SHARED, "SMI_PCIE", dev);
	if (ret < 0)
		goto err_del_ir;

	FUNC21(&dev->ir);
	return 0;

err_del_ir:
	FUNC19(dev);
err_del_port1_attach:
	if (dev->info->ts_1)
		FUNC23(&dev->ts_port[1]);
err_del_port0_attach:
	if (dev->info->ts_0)
		FUNC23(&dev->ts_port[0]);
err_del_i2c_adaptor:
	FUNC17(dev);
err_pci_iounmap:
	FUNC3(dev->lmmio);
err_kfree:
	FUNC13(pdev, NULL);
	FUNC4(dev);
err_pci_disable_device:
	FUNC6(pdev);
	return ret;
}