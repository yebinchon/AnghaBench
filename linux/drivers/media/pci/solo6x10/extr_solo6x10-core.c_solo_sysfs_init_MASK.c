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
struct device {int /*<<< orphan*/ * parent; int /*<<< orphan*/  release; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct bin_attribute {int /*<<< orphan*/  size; int /*<<< orphan*/  read; TYPE_3__ attr; } ;
struct solo_dev {scalar_t__ type; int /*<<< orphan*/  sdram_size; int /*<<< orphan*/  nr_chans; TYPE_2__* vfd; TYPE_1__* pdev; struct device dev; struct bin_attribute sdram_attr; } ;
struct TYPE_5__ {int /*<<< orphan*/  num; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 scalar_t__ SOLO_DEV_6110 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct device*,struct bin_attribute*) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  sdram_show ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * solo_dev_attrs ; 
 int /*<<< orphan*/  solo_device_release ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(struct solo_dev *solo_dev)
{
	struct bin_attribute *sdram_attr = &solo_dev->sdram_attr;
	struct device *dev = &solo_dev->dev;
	const char *driver;
	int i;

	if (solo_dev->type == SOLO_DEV_6110)
		driver = "solo6110";
	else
		driver = "solo6010";

	dev->release = solo_device_release;
	dev->parent = &solo_dev->pdev->dev;
	FUNC7(dev, FUNC2(&solo_dev->pdev->dev));
	FUNC1(dev, "%s-%d-%d", driver, solo_dev->vfd->num,
		     solo_dev->nr_chans);

	if (FUNC5(dev)) {
		dev->parent = NULL;
		return -ENOMEM;
	}

	for (i = 0; i < FUNC0(solo_dev_attrs); i++) {
		if (FUNC4(dev, &solo_dev_attrs[i])) {
			FUNC6(dev);
			return -ENOMEM;
		}
	}

	FUNC8(&sdram_attr->attr);
	sdram_attr->attr.name = "sdram";
	sdram_attr->attr.mode = 0440;
	sdram_attr->read = sdram_show;
	sdram_attr->size = solo_dev->sdram_size;

	if (FUNC3(dev, sdram_attr)) {
		FUNC6(dev);
		return -ENOMEM;
	}

	return 0;
}