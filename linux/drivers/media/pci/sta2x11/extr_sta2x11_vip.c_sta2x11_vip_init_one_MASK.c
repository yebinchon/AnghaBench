#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vip_config {int /*<<< orphan*/  pwr_name; int /*<<< orphan*/  pwr_pin; int /*<<< orphan*/  reset_name; int /*<<< orphan*/  reset_pin; int /*<<< orphan*/  i2c_addr; int /*<<< orphan*/  i2c_id; } ;
struct TYPE_5__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/ * queue; int /*<<< orphan*/ * v4l2_dev; } ;
struct sta2x11_vip {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  iomem; int /*<<< orphan*/  vb_vidq; TYPE_1__ video_dev; int /*<<< orphan*/  decoder; int /*<<< orphan*/  adapter; struct vip_config* config; int /*<<< orphan*/  v4l_lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  format; int /*<<< orphan*/  std; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  V4L2_STD_PAL ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct vip_config* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * formats_50 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sta2x11_vip*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  FUNC11 (struct sta2x11_vip*) ; 
 struct sta2x11_vip* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sta2x11_vip*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (struct sta2x11_vip*) ; 
 int FUNC27 (struct sta2x11_vip*) ; 
 int /*<<< orphan*/  FUNC28 (struct sta2x11_vip*) ; 
 int /*<<< orphan*/  FUNC29 (int,int) ; 
 int FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 TYPE_1__ video_dev_template ; 
 int FUNC35 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*,struct sta2x11_vip*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ vip_irq ; 

__attribute__((used)) static int FUNC40(struct pci_dev *pdev,
				const struct pci_device_id *ent)
{
	int ret;
	struct sta2x11_vip *vip;
	struct vip_config *config;

	/* Check if hardware support 26-bit DMA */
	if (FUNC5(&pdev->dev, FUNC0(26))) {
		FUNC2(&pdev->dev, "26-bit DMA addressing not available\n");
		return -EINVAL;
	}
	/* Enable PCI */
	ret = FUNC15(pdev);
	if (ret)
		return ret;

	/* Get VIP platform data */
	config = FUNC3(&pdev->dev);
	if (!config) {
		FUNC4(&pdev->dev, "VIP slot disabled\n");
		ret = -EINVAL;
		goto disable;
	}

	/* Power configuration */
	ret = FUNC39(&pdev->dev, config->pwr_pin, 0,
			       config->pwr_name);
	if (ret)
		goto disable;

	ret = FUNC39(&pdev->dev, config->reset_pin, 0,
			       config->reset_name);
	if (ret) {
		FUNC38(&pdev->dev, config->pwr_pin,
				 config->pwr_name);
		goto disable;
	}

	if (FUNC8(config->pwr_pin)) {
		/* Datasheet says 5ms between PWR and RST */
		FUNC29(5000, 25000);
		FUNC7(config->pwr_pin, 1);
	}

	if (FUNC8(config->reset_pin)) {
		/* Datasheet says 5ms between PWR and RST */
		FUNC29(5000, 25000);
		FUNC7(config->reset_pin, 1);
	}
	FUNC29(5000, 25000);

	/* Allocate a new VIP instance */
	vip = FUNC12(sizeof(struct sta2x11_vip), GFP_KERNEL);
	if (!vip) {
		ret = -ENOMEM;
		goto release_gpios;
	}
	vip->pdev = pdev;
	vip->std = V4L2_STD_PAL;
	vip->format = formats_50[0];
	vip->config = config;
	FUNC13(&vip->v4l_lock);

	ret = FUNC27(vip);
	if (ret)
		goto free_mem;
	ret = FUNC30(&pdev->dev, &vip->v4l2_dev);
	if (ret)
		goto free_mem;

	FUNC1(&pdev->dev, "BAR #0 at 0x%lx 0x%lx irq %d\n",
		(unsigned long)FUNC22(pdev, 0),
		(unsigned long)FUNC21(pdev, 0), pdev->irq);

	FUNC23(pdev);

	ret = FUNC20(pdev, KBUILD_MODNAME);
	if (ret)
		goto unreg;

	vip->iomem = FUNC17(pdev, 0, 0x100);
	if (!vip->iomem) {
		ret = -ENOMEM;
		goto release;
	}

	FUNC16(pdev);

	/* Initialize buffer */
	ret = FUNC26(vip);
	if (ret)
		goto unmap;

	FUNC25(&vip->slock);

	ret = FUNC24(pdev->irq,
			  (irq_handler_t) vip_irq,
			  IRQF_SHARED, KBUILD_MODNAME, vip);
	if (ret) {
		FUNC2(&pdev->dev, "request_irq failed\n");
		ret = -ENODEV;
		goto release_buf;
	}

	/* Initialize and register video device */
	vip->video_dev = video_dev_template;
	vip->video_dev.v4l2_dev = &vip->v4l2_dev;
	vip->video_dev.queue = &vip->vb_vidq;
	vip->video_dev.lock = &vip->v4l_lock;
	FUNC36(&vip->video_dev, vip);

	ret = FUNC35(&vip->video_dev, VFL_TYPE_GRABBER, -1);
	if (ret)
		goto vrelease;

	/* Get ADV7180 subdevice */
	vip->adapter = FUNC9(vip->config->i2c_id);
	if (!vip->adapter) {
		ret = -ENODEV;
		FUNC2(&pdev->dev, "no I2C adapter found\n");
		goto vunreg;
	}

	vip->decoder = FUNC32(&vip->v4l2_dev, vip->adapter,
					   "adv7180", vip->config->i2c_addr,
					   NULL);
	if (!vip->decoder) {
		ret = -ENODEV;
		FUNC2(&pdev->dev, "no decoder found\n");
		goto vunreg;
	}

	FUNC10(vip->adapter);
	FUNC33(vip->decoder, core, init, 0);

	FUNC28(vip);

	FUNC4(&pdev->dev, "STA2X11 Video Input Port (VIP) loaded\n");
	return 0;

vunreg:
	FUNC36(&vip->video_dev, NULL);
vrelease:
	FUNC37(&vip->video_dev);
	FUNC6(pdev->irq, vip);
release_buf:
	FUNC14(pdev);
unmap:
	FUNC34(&vip->vb_vidq);
	FUNC18(pdev, vip->iomem);
release:
	FUNC19(pdev);
unreg:
	FUNC31(&vip->v4l2_dev);
free_mem:
	FUNC11(vip);
release_gpios:
	FUNC38(&pdev->dev, config->reset_pin, config->reset_name);
	FUNC38(&pdev->dev, config->pwr_pin, config->pwr_name);
disable:
	/*
	 * do not call pci_disable_device on sta2x11 because it break all
	 * other Bus masters on this EP
	 */
	return ret;
}