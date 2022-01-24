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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct r852_device {int card_registered; scalar_t__ card_detected; TYPE_2__* chip; int /*<<< orphan*/  sm; scalar_t__ readonly; TYPE_1__* pci_dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct mtd_info {TYPE_4__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  options; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_ROM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dev_attr_media_type ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct mtd_info* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct r852_device*) ; 
 scalar_t__ FUNC6 (struct mtd_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct r852_device *dev)
{
	struct mtd_info *mtd = FUNC4(dev->chip);

	FUNC0(dev->card_registered);

	mtd->dev.parent = &dev->pci_dev->dev;

	if (dev->readonly)
		dev->chip->options |= NAND_ROM;

	FUNC5(dev);

	if (FUNC6(mtd, dev->sm))
		goto error1;

	if (FUNC1(&mtd->dev, &dev_attr_media_type)) {
		FUNC2("can't create media type sysfs attribute");
		goto error3;
	}

	dev->card_registered = 1;
	return 0;
error3:
	FUNC3(dev->chip);
error1:
	/* Force card redetect */
	dev->card_detected = 0;
	return -1;
}