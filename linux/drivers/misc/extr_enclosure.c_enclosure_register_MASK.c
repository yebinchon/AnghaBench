#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; int /*<<< orphan*/ * class; } ;
struct enclosure_device {int components; TYPE_2__ edev; int /*<<< orphan*/  node; TYPE_1__* component; struct enclosure_component_callbacks* cb; } ;
struct enclosure_component_callbacks {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int number; int slot; int power_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct enclosure_device* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  component ; 
 int /*<<< orphan*/  container_list ; 
 int /*<<< orphan*/  container_list_lock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char const*) ; 
 int FUNC3 (TYPE_2__*) ; 
 struct enclosure_device* edev ; 
 int /*<<< orphan*/  enclosure_class ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct enclosure_device*) ; 
 struct enclosure_device* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct enclosure_device *
FUNC12(struct device *dev, const char *name, int components,
		   struct enclosure_component_callbacks *cb)
{
	struct enclosure_device *edev =
		FUNC6(FUNC11(edev, component, components), GFP_KERNEL);
	int err, i;

	FUNC0(!cb);

	if (!edev)
		return FUNC1(-ENOMEM);

	edev->components = components;

	edev->edev.class = &enclosure_class;
	edev->edev.parent = FUNC4(dev);
	edev->cb = cb;
	FUNC2(&edev->edev, "%s", name);
	err = FUNC3(&edev->edev);
	if (err)
		goto err;

	for (i = 0; i < components; i++) {
		edev->component[i].number = -1;
		edev->component[i].slot = -1;
		edev->component[i].power_status = -1;
	}

	FUNC8(&container_list_lock);
	FUNC7(&edev->node, &container_list);
	FUNC9(&container_list_lock);

	return edev;

 err:
	FUNC10(edev->edev.parent);
	FUNC5(edev);
	return FUNC1(err);
}