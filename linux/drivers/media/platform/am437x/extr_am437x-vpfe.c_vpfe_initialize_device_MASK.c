#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vpfe_subdev_info {int /*<<< orphan*/  sd; } ;
struct vpfe_device {size_t std_index; int /*<<< orphan*/  ccdc; int /*<<< orphan*/  pdev; scalar_t__ current_input; int /*<<< orphan*/ * sd; TYPE_1__* cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  std_id; } ;
struct TYPE_3__ {struct vpfe_subdev_info* sub_devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct vpfe_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* vpfe_standards ; 

__attribute__((used)) static int FUNC5(struct vpfe_device *vpfe)
{
	struct vpfe_subdev_info *sdinfo;
	int ret;

	sdinfo = &vpfe->cfg->sub_devs[0];
	sdinfo->sd = vpfe->sd[0];
	vpfe->current_input = 0;
	vpfe->std_index = 0;
	/* Configure the default format information */
	ret = FUNC4(vpfe,
				       vpfe_standards[vpfe->std_index].std_id);
	if (ret)
		return ret;

	FUNC0(vpfe->pdev);

	FUNC3(&vpfe->ccdc, 1);

	FUNC1(&vpfe->ccdc);

	/* Clear all VPFE interrupts */
	FUNC2(&vpfe->ccdc, -1);

	return ret;
}