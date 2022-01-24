#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct softing_priv {int index; } ;
struct softing_platform_data {int nbus; int /*<<< orphan*/  name; int /*<<< orphan*/  freq; } ;
struct TYPE_10__ {int /*<<< orphan*/ * chip; int /*<<< orphan*/  freq; } ;
struct TYPE_9__ {int /*<<< orphan*/  nr; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct softing {int /*<<< orphan*/  dpram; struct net_device** net; struct softing_platform_data const* pdat; struct platform_device* pdev; TYPE_3__ id; TYPE_2__ irq; int /*<<< orphan*/  dpram_size; int /*<<< orphan*/  dpram_phys; int /*<<< orphan*/  spin; TYPE_1__ fw; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_4__ dev; } ;
struct net_device {int dev_id; } ;

/* Variables and functions */
 int FUNC0 (struct net_device**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,...) ; 
 struct softing_platform_data* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct softing*) ; 
 struct softing* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct softing_priv* FUNC11 (struct net_device*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct softing*) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int FUNC15 (struct softing*) ; 
 int /*<<< orphan*/  FUNC16 (struct softing*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 struct net_device* FUNC18 (struct softing*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  softing_pdev_group ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	const struct softing_platform_data *pdat = FUNC2(&pdev->dev);
	struct softing *card;
	struct net_device *netdev;
	struct softing_priv *priv;
	struct resource *pres;
	int ret;
	int j;

	if (!pdat) {
		FUNC4(&pdev->dev, "no platform data\n");
		return -EINVAL;
	}
	if (pdat->nbus > FUNC0(card->net)) {
		FUNC4(&pdev->dev, "%u nets??\n", pdat->nbus);
		return -EINVAL;
	}

	card = FUNC9(sizeof(*card), GFP_KERNEL);
	if (!card)
		return -ENOMEM;
	card->pdat = pdat;
	card->pdev = pdev;
	FUNC13(pdev, card);
	FUNC10(&card->fw.lock);
	FUNC20(&card->spin);

	ret = -EINVAL;
	pres = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!pres)
		goto platform_resource_failed;
	card->dpram_phys = pres->start;
	card->dpram_size = FUNC14(pres);
	card->dpram = FUNC6(card->dpram_phys, card->dpram_size);
	if (!card->dpram) {
		FUNC1(&card->pdev->dev, "dpram ioremap failed\n");
		goto ioremap_failed;
	}

	pres = FUNC12(pdev, IORESOURCE_IRQ, 0);
	if (pres)
		card->irq.nr = pres->start;

	/* reset card */
	ret = FUNC15(card);
	if (ret < 0) {
		FUNC1(&pdev->dev, "failed to boot\n");
		goto boot_failed;
	}

	/* only now, the chip's are known */
	card->id.freq = card->pdat->freq;

	ret = FUNC21(&pdev->dev.kobj, &softing_pdev_group);
	if (ret < 0) {
		FUNC1(&card->pdev->dev, "sysfs failed\n");
		goto sysfs_failed;
	}

	for (j = 0; j < FUNC0(card->net); ++j) {
		card->net[j] = netdev =
			FUNC18(card, card->id.chip[j]);
		if (!netdev) {
			FUNC1(&pdev->dev, "failed to make can[%i]", j);
			ret = -ENOMEM;
			goto netdev_failed;
		}
		netdev->dev_id = j;
		priv = FUNC11(card->net[j]);
		priv->index = j;
		ret = FUNC19(netdev);
		if (ret) {
			FUNC5(netdev);
			card->net[j] = NULL;
			FUNC1(&card->pdev->dev,
					"failed to register can[%i]\n", j);
			goto netdev_failed;
		}
	}
	FUNC3(&card->pdev->dev, "%s ready.\n", card->pdat->name);
	return 0;

netdev_failed:
	for (j = 0; j < FUNC0(card->net); ++j) {
		if (!card->net[j])
			continue;
		FUNC17(card->net[j]);
	}
	FUNC22(&pdev->dev.kobj, &softing_pdev_group);
sysfs_failed:
	FUNC16(card);
boot_failed:
	FUNC7(card->dpram);
ioremap_failed:
platform_resource_failed:
	FUNC8(card);
	return ret;
}