#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct video_device {int /*<<< orphan*/  num; int /*<<< orphan*/  name; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fdp1_dev {int irq; int /*<<< orphan*/  v4l2_dev; struct clk* m2m_dev; TYPE_1__* dev; int /*<<< orphan*/  dev_mutex; struct video_device vfd; int /*<<< orphan*/  clk_rate; struct clk* fcp; struct clk* regs; int /*<<< orphan*/  device_process_lock; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  free_job_list; TYPE_12__* jobs; int /*<<< orphan*/  hw_job_list; int /*<<< orphan*/  queued_job_list; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_12__*) ; 
 int ENOMEM ; 
#define  FD1_IP_E3 132 
#define  FD1_IP_H3 131 
#define  FD1_IP_H3_ES1 130 
 int /*<<< orphan*/  FD1_IP_INTDATA ; 
#define  FD1_IP_M3N 129 
#define  FD1_IP_M3W 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 struct clk* FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct clk* FUNC10 (TYPE_1__*,struct resource*) ; 
 struct fdp1_dev* FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fdp1_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct fdp1_dev*,char*) ; 
 int /*<<< orphan*/  fdp1_irq_handler ; 
 int FUNC14 (struct fdp1_dev*,int /*<<< orphan*/ ) ; 
 struct video_device fdp1_videodev ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  m2m_ops ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*) ; 
 struct device_node* FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct fdp1_dev*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 struct clk* FUNC25 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC28 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct clk* FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (struct clk*) ; 
 int FUNC34 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct video_device*,struct fdp1_dev*) ; 

__attribute__((used)) static int FUNC36(struct platform_device *pdev)
{
	struct fdp1_dev *fdp1;
	struct video_device *vfd;
	struct device_node *fcp_node;
	struct resource *res;
	struct clk *clk;
	unsigned int i;

	int ret;
	int hw_version;

	fdp1 = FUNC11(&pdev->dev, sizeof(*fdp1), GFP_KERNEL);
	if (!fdp1)
		return -ENOMEM;

	FUNC1(&fdp1->free_job_list);
	FUNC1(&fdp1->queued_job_list);
	FUNC1(&fdp1->hw_job_list);

	/* Initialise the jobs on the free list */
	for (i = 0; i < FUNC0(fdp1->jobs); i++)
		FUNC15(&fdp1->jobs[i].list, &fdp1->free_job_list);

	FUNC16(&fdp1->dev_mutex);

	FUNC26(&fdp1->irqlock);
	FUNC26(&fdp1->device_process_lock);
	fdp1->dev = &pdev->dev;
	FUNC21(pdev, fdp1);

	/* Memory-mapped registers */
	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	fdp1->regs = FUNC10(&pdev->dev, res);
	if (FUNC2(fdp1->regs))
		return FUNC3(fdp1->regs);

	/* Interrupt service routine registration */
	fdp1->irq = ret = FUNC19(pdev, 0);
	if (ret < 0) {
		FUNC8(&pdev->dev, "cannot find IRQ\n");
		return ret;
	}

	ret = FUNC12(&pdev->dev, fdp1->irq, fdp1_irq_handler, 0,
			       FUNC9(&pdev->dev), fdp1);
	if (ret) {
		FUNC8(&pdev->dev, "cannot claim IRQ %d\n", fdp1->irq);
		return ret;
	}

	/* FCP */
	fcp_node = FUNC18(pdev->dev.of_node, "renesas,fcp", 0);
	if (fcp_node) {
		fdp1->fcp = FUNC25(fcp_node);
		FUNC17(fcp_node);
		if (FUNC2(fdp1->fcp)) {
			FUNC7(&pdev->dev, "FCP not found (%ld)\n",
				FUNC3(fdp1->fcp));
			return FUNC3(fdp1->fcp);
		}
	}

	/* Determine our clock rate */
	clk = FUNC4(&pdev->dev, NULL);
	if (FUNC2(clk))
		return FUNC3(clk);

	fdp1->clk_rate = FUNC5(clk);
	FUNC6(clk);

	/* V4L2 device registration */
	ret = FUNC28(&pdev->dev, &fdp1->v4l2_dev);
	if (ret) {
		FUNC30(&fdp1->v4l2_dev, "Failed to register video device\n");
		return ret;
	}

	/* M2M registration */
	fdp1->m2m_dev = FUNC32(&m2m_ops);
	if (FUNC2(fdp1->m2m_dev)) {
		FUNC30(&fdp1->v4l2_dev, "Failed to init mem2mem device\n");
		ret = FUNC3(fdp1->m2m_dev);
		goto unreg_dev;
	}

	/* Video registration */
	fdp1->vfd = fdp1_videodev;
	vfd = &fdp1->vfd;
	vfd->lock = &fdp1->dev_mutex;
	vfd->v4l2_dev = &fdp1->v4l2_dev;
	FUNC35(vfd, fdp1);
	FUNC27(vfd->name, fdp1_videodev.name, sizeof(vfd->name));

	ret = FUNC34(vfd, VFL_TYPE_GRABBER, 0);
	if (ret) {
		FUNC30(&fdp1->v4l2_dev, "Failed to register video device\n");
		goto release_m2m;
	}

	FUNC31(&fdp1->v4l2_dev, "Device registered as /dev/video%d\n",
		  vfd->num);

	/* Power up the cells to read HW */
	FUNC22(&pdev->dev);
	FUNC23(fdp1->dev);

	hw_version = FUNC14(fdp1, FD1_IP_INTDATA);
	switch (hw_version) {
	case FD1_IP_H3_ES1:
		FUNC13(fdp1, "FDP1 Version R-Car H3 ES1\n");
		break;
	case FD1_IP_M3W:
		FUNC13(fdp1, "FDP1 Version R-Car M3-W\n");
		break;
	case FD1_IP_H3:
		FUNC13(fdp1, "FDP1 Version R-Car H3\n");
		break;
	case FD1_IP_M3N:
		FUNC13(fdp1, "FDP1 Version R-Car M3N\n");
		break;
	case FD1_IP_E3:
		FUNC13(fdp1, "FDP1 Version R-Car E3\n");
		break;
	default:
		FUNC8(fdp1->dev, "FDP1 Unidentifiable (0x%08x)\n",
			hw_version);
	}

	/* Allow the hw to sleep until an open call puts it to use */
	FUNC24(fdp1->dev);

	return 0;

release_m2m:
	FUNC33(fdp1->m2m_dev);

unreg_dev:
	FUNC29(&fdp1->v4l2_dev);

	return ret;
}