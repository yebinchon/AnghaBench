#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vpfe_device {size_t std_index; int initialized; TYPE_2__* cfg; int /*<<< orphan*/  pdev; int /*<<< orphan*/  v4l2_dev; scalar_t__ current_input; } ;
struct TYPE_5__ {int (* open ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_1__ hw_ops; int /*<<< orphan*/  owner; } ;
struct TYPE_7__ {int /*<<< orphan*/  std_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* clr_intr ) (int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_4__* ccdc_dev ; 
 int /*<<< orphan*/  ccdc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct vpfe_device*,int /*<<< orphan*/ ) ; 
 TYPE_3__* vpfe_standards ; 

__attribute__((used)) static int FUNC7(struct vpfe_device *vpfe_dev)
{
	int ret;

	/* set first input of current subdevice as the current input */
	vpfe_dev->current_input = 0;

	/* set default standard */
	vpfe_dev->std_index = 0;

	/* Configure the default format information */
	ret = FUNC6(vpfe_dev,
				vpfe_standards[vpfe_dev->std_index].std_id);
	if (ret)
		return ret;

	/* now open the ccdc device to initialize it */
	FUNC0(&ccdc_lock);
	if (!ccdc_dev) {
		FUNC5(&vpfe_dev->v4l2_dev, "ccdc device not registered\n");
		ret = -ENODEV;
		goto unlock;
	}

	if (!FUNC4(ccdc_dev->owner)) {
		FUNC5(&vpfe_dev->v4l2_dev, "Couldn't lock ccdc module\n");
		ret = -ENODEV;
		goto unlock;
	}
	ret = ccdc_dev->hw_ops.open(vpfe_dev->pdev);
	if (!ret)
		vpfe_dev->initialized = 1;

	/* Clear all VPFE/CCDC interrupts */
	if (vpfe_dev->cfg->clr_intr)
		vpfe_dev->cfg->clr_intr(-1);

unlock:
	FUNC1(&ccdc_lock);
	return ret;
}