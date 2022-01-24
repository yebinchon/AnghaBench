#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_9__ {TYPE_1__ dev; TYPE_2__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  version_id; scalar_t__ base; int /*<<< orphan*/  write_bufferram; int /*<<< orphan*/  read_bufferram; int /*<<< orphan*/  wait; } ;
struct omap2_onenand {scalar_t__ dma_chan; TYPE_3__ mtd; int /*<<< orphan*/  gpmc_cs; TYPE_2__ onenand; int /*<<< orphan*/  phys_base; struct platform_device* pdev; scalar_t__ int_gpiod; int /*<<< orphan*/  dma_done; int /*<<< orphan*/  irq_done; } ;
struct gpmc_onenand_info {scalar_t__ sync_write; scalar_t__ sync_read; int /*<<< orphan*/  burst_len; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,...) ; 
 scalar_t__ FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,struct resource*) ; 
 struct omap2_onenand* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct omap2_onenand*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,int,int,struct gpmc_onenand_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,struct device_node*) ; 
 int FUNC17 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap2_onenand_interrupt ; 
 int /*<<< orphan*/  omap2_onenand_read_bufferram ; 
 int FUNC19 (struct omap2_onenand*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap2_onenand_wait ; 
 int /*<<< orphan*/  omap2_onenand_write_bufferram ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int FUNC21 (TYPE_3__*,int) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct omap2_onenand*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	u32 val;
	dma_cap_mask_t mask;
	int freq, latency, r;
	struct resource *res;
	struct omap2_onenand *c;
	struct gpmc_onenand_info info;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;

	res = FUNC22(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(dev, "error getting memory resource\n");
		return -EINVAL;
	}

	r = FUNC17(np, "reg", &val);
	if (r) {
		FUNC2(dev, "reg not found in DT\n");
		return r;
	}

	c = FUNC6(dev, sizeof(struct omap2_onenand), GFP_KERNEL);
	if (!c)
		return -ENOMEM;

	FUNC14(&c->irq_done);
	FUNC14(&c->dma_done);
	c->gpmc_cs = val;
	c->phys_base = res->start;

	c->onenand.base = FUNC5(dev, res);
	if (FUNC0(c->onenand.base))
		return FUNC1(c->onenand.base);

	c->int_gpiod = FUNC4(dev, "int", GPIOD_IN);
	if (FUNC0(c->int_gpiod)) {
		r = FUNC1(c->int_gpiod);
		/* Just try again if this happens */
		if (r != -EPROBE_DEFER)
			FUNC2(dev, "error getting gpio: %d\n", r);
		return r;
	}

	if (c->int_gpiod) {
		r = FUNC7(dev, FUNC12(c->int_gpiod),
				     omap2_onenand_interrupt,
				     IRQF_TRIGGER_RISING, "onenand", c);
		if (r)
			return r;

		c->onenand.wait = omap2_onenand_wait;
	}

	FUNC9(mask);
	FUNC8(DMA_MEMCPY, mask);

	c->dma_chan = FUNC11(mask, NULL, NULL);
	if (c->dma_chan) {
		c->onenand.read_bufferram = omap2_onenand_read_bufferram;
		c->onenand.write_bufferram = omap2_onenand_write_bufferram;
	}

	c->pdev = pdev;
	c->mtd.priv = &c->onenand;
	c->mtd.dev.parent = dev;
	FUNC16(&c->mtd, dev->of_node);

	FUNC3(dev, "initializing on CS%d (0x%08lx), va %p, %s mode\n",
		 c->gpmc_cs, c->phys_base, c->onenand.base,
		 c->dma_chan ? "DMA" : "PIO");

	if ((r = FUNC21(&c->mtd, 1)) < 0)
		goto err_release_dma;

	freq = FUNC18(c->onenand.version_id);
	if (freq > 0) {
		switch (freq) {
		case 104:
			latency = 7;
			break;
		case 83:
			latency = 6;
			break;
		case 66:
			latency = 5;
			break;
		case 56:
			latency = 4;
			break;
		default:	/* 40 MHz or lower */
			latency = 3;
			break;
		}

		r = FUNC13(dev, c->gpmc_cs,
						  freq, latency, &info);
		if (r)
			goto err_release_onenand;

		r = FUNC19(c, info.sync_read, info.sync_write,
					  latency, info.burst_len);
		if (r)
			goto err_release_onenand;

		if (info.sync_read || info.sync_write)
			FUNC3(dev, "optimized timings for %d MHz\n", freq);
	}

	r = FUNC15(&c->mtd, NULL, 0);
	if (r)
		goto err_release_onenand;

	FUNC23(pdev, c);

	return 0;

err_release_onenand:
	FUNC20(&c->mtd);
err_release_dma:
	if (c->dma_chan)
		FUNC10(c->dma_chan);

	return r;
}