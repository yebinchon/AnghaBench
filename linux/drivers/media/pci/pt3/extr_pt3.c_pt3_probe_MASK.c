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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct pt3_board {int /*<<< orphan*/ ** regs; struct pt3_board* i2c_buf; struct i2c_adapter i2c_adap; int /*<<< orphan*/  num_bufs; int /*<<< orphan*/  lock; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_DATA_BUFS ; 
 int /*<<< orphan*/  MIN_DATA_BUFS ; 
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 int PT3_NUM_FE ; 
 int REG_VERSION ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,struct pt3_board*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pt3_board*) ; 
 struct pt3_board* FUNC12 (int,int /*<<< orphan*/ ) ; 
 struct pt3_board* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_bufs ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*) ; 
 void* FUNC17 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,struct pt3_board*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pt3_board*,int) ; 
 int FUNC25 (struct pt3_board*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct pt3_board*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct pt3_board*) ; 
 int /*<<< orphan*/  pt3_i2c_algo ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC29(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	u8 rev;
	u32 ver;
	int i, ret;
	struct pt3_board *pt3;
	struct i2c_adapter *i2c;

	if (FUNC19(pdev, PCI_REVISION_ID, &rev) || rev != 1)
		return -ENODEV;

	ret = FUNC16(pdev);
	if (ret < 0)
		return -ENODEV;
	FUNC23(pdev);

	ret = FUNC21(pdev, DRV_NAME);
	if (ret < 0)
		goto err_disable_device;

	ret = FUNC6(&pdev->dev, FUNC0(64));
	if (ret == 0)
		FUNC5(&pdev->dev, FUNC0(64));
	else {
		ret = FUNC6(&pdev->dev, FUNC0(32));
		if (ret == 0)
			FUNC5(&pdev->dev, FUNC0(32));
		else {
			FUNC2(&pdev->dev, "Failed to set DMA mask\n");
			goto err_release_regions;
		}
		FUNC3(&pdev->dev, "Use 32bit DMA\n");
	}

	pt3 = FUNC13(sizeof(*pt3), GFP_KERNEL);
	if (!pt3) {
		ret = -ENOMEM;
		goto err_release_regions;
	}
	FUNC22(pdev, pt3);
	pt3->pdev = pdev;
	FUNC14(&pt3->lock);
	pt3->regs[0] = FUNC17(pdev, 0);
	pt3->regs[1] = FUNC17(pdev, 2);
	if (pt3->regs[0] == NULL || pt3->regs[1] == NULL) {
		FUNC2(&pdev->dev, "Failed to ioremap\n");
		ret = -ENOMEM;
		goto err_kfree;
	}

	ver = FUNC10(pt3->regs[0] + REG_VERSION);
	if ((ver >> 16) != 0x0301) {
		FUNC4(&pdev->dev, "PT%d, I/F-ver.:%d not supported\n",
			 ver >> 24, (ver & 0x00ff0000) >> 16);
		ret = -ENODEV;
		goto err_iounmap;
	}

	pt3->num_bufs = FUNC1(num_bufs, MIN_DATA_BUFS, MAX_DATA_BUFS);

	pt3->i2c_buf = FUNC12(sizeof(*pt3->i2c_buf), GFP_KERNEL);
	if (pt3->i2c_buf == NULL) {
		ret = -ENOMEM;
		goto err_iounmap;
	}
	i2c = &pt3->i2c_adap;
	i2c->owner = THIS_MODULE;
	i2c->algo = &pt3_i2c_algo;
	i2c->algo_data = NULL;
	i2c->dev.parent = &pdev->dev;
	FUNC28(i2c->name, DRV_NAME, sizeof(i2c->name));
	FUNC9(i2c, pt3);
	ret = FUNC7(i2c);
	if (ret < 0)
		goto err_i2cbuf;

	for (i = 0; i < PT3_NUM_FE; i++) {
		ret = FUNC24(pt3, i);
		if (ret < 0)
			break;

		ret = FUNC25(pt3, i);
		if (ret < 0)
			break;
	}
	if (i < PT3_NUM_FE) {
		FUNC2(&pdev->dev, "Failed to create FE%d\n", i);
		goto err_cleanup_adapters;
	}

	ret = FUNC27(pt3);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to init frontends\n");
		i = PT3_NUM_FE - 1;
		goto err_cleanup_adapters;
	}

	FUNC3(&pdev->dev,
		 "successfully init'ed PT%d (fw:0x%02x, I/F:0x%02x)\n",
		 ver >> 24, (ver >> 8) & 0xff, (ver >> 16) & 0xff);
	return 0;

err_cleanup_adapters:
	while (i >= 0)
		FUNC26(pt3, i--);
	FUNC8(i2c);
err_i2cbuf:
	FUNC11(pt3->i2c_buf);
err_iounmap:
	if (pt3->regs[0])
		FUNC18(pdev, pt3->regs[0]);
	if (pt3->regs[1])
		FUNC18(pdev, pt3->regs[1]);
err_kfree:
	FUNC11(pt3);
err_release_regions:
	FUNC20(pdev);
err_disable_device:
	FUNC15(pdev);
	return ret;

}