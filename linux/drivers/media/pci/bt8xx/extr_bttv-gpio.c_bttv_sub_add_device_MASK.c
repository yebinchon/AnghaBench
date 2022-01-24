#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; } ;
struct bttv_sub_device {int /*<<< orphan*/  list; TYPE_2__ dev; struct bttv_core* core; } ;
struct bttv_core {int /*<<< orphan*/  subs; int /*<<< orphan*/  nr; TYPE_1__* pci; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bttv_sub_bus_type ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 struct bttv_sub_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  release_sub_device ; 

int FUNC7(struct bttv_core *core, char *name)
{
	struct bttv_sub_device *sub;
	int err;

	sub = FUNC3(sizeof(*sub),GFP_KERNEL);
	if (NULL == sub)
		return -ENOMEM;

	sub->core        = core;
	sub->dev.parent  = &core->pci->dev;
	sub->dev.bus     = &bttv_sub_bus_type;
	sub->dev.release = release_sub_device;
	FUNC1(&sub->dev, "%s%d", name, core->nr);

	err = FUNC2(&sub->dev);
	if (0 != err) {
		FUNC6(&sub->dev);
		return err;
	}
	FUNC5("%d: add subdevice \"%s\"\n", core->nr, FUNC0(&sub->dev));
	FUNC4(&sub->list,&core->subs);
	return 0;
}