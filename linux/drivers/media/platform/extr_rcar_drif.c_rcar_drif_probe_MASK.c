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
struct resource {int /*<<< orphan*/  start; } ;
struct rcar_drif_sdr {int /*<<< orphan*/  hw_ch_mask; int /*<<< orphan*/  num_hw_ch; struct rcar_drif** ch; int /*<<< orphan*/ * dev; } ;
struct rcar_drif {int num; struct rcar_drif_sdr* sdr; int /*<<< orphan*/  start; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct rcar_drif*) ; 
 int FUNC11 (struct rcar_drif_sdr*,struct device_node*) ; 
 struct device_node* FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 int FUNC14 (struct rcar_drif_sdr*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct rcar_drif_sdr *sdr;
	struct device_node *np;
	struct rcar_drif *ch;
	struct resource	*res;
	int ret;

	/* Reserve memory for enabled channel */
	ch = FUNC6(&pdev->dev, sizeof(*ch), GFP_KERNEL);
	if (!ch)
		return -ENOMEM;

	ch->pdev = pdev;

	/* Module clock */
	ch->clk = FUNC4(&pdev->dev, "fck");
	if (FUNC1(ch->clk)) {
		ret = FUNC2(ch->clk);
		FUNC3(&pdev->dev, "clk get failed (%d)\n", ret);
		return ret;
	}

	/* Register map */
	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	ch->base = FUNC5(&pdev->dev, res);
	if (FUNC1(ch->base))
		return FUNC2(ch->base);

	ch->start = res->start;
	FUNC10(pdev, ch);

	/* Check if both channels of the bond are enabled */
	np = FUNC12(pdev);
	if (np) {
		/* Check if current channel acting as primary-bond */
		if (!FUNC13(pdev)) {
			ch->num = 1;	/* Primary bond is channel 0 always */
			FUNC8(np);
			return 0;
		}
	}

	/* Reserve memory for SDR structure */
	sdr = FUNC6(&pdev->dev, sizeof(*sdr), GFP_KERNEL);
	if (!sdr) {
		FUNC8(np);
		return -ENOMEM;
	}
	ch->sdr = sdr;
	sdr->dev = &pdev->dev;

	/* Establish links between SDR and channel(s) */
	sdr->ch[ch->num] = ch;
	sdr->hw_ch_mask = FUNC0(ch->num);
	if (np) {
		/* Check if bonded device is ready */
		ret = FUNC11(sdr, np);
		FUNC8(np);
		if (ret)
			return ret;
	}
	sdr->num_hw_ch = FUNC7(sdr->hw_ch_mask);

	return FUNC14(sdr);
}