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
struct rcar_drif_sdr {int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_ch_mask; struct rcar_drif** ch; } ;
struct rcar_drif {size_t num; struct rcar_drif_sdr* sdr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC5 (struct device_node*) ; 
 struct rcar_drif* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct rcar_drif_sdr *sdr,
				    struct device_node *np)
{
	struct platform_device *pdev;
	struct rcar_drif *ch;
	int ret = 0;

	pdev = FUNC5(np);
	if (!pdev) {
		FUNC1(sdr->dev, "failed to get bonded device from node\n");
		return -ENODEV;
	}

	FUNC3(&pdev->dev);
	ch = FUNC6(pdev);
	if (ch) {
		/* Update sdr data in the bonded device */
		ch->sdr = sdr;

		/* Update sdr with bonded device data */
		sdr->ch[ch->num] = ch;
		sdr->hw_ch_mask |= FUNC0(ch->num);
	} else {
		/* Defer */
		FUNC2(sdr->dev, "defer probe\n");
		ret = -EPROBE_DEFER;
	}
	FUNC4(&pdev->dev);

	FUNC7(&pdev->dev);

	return ret;
}