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
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {void* sccp; void* ep; } ;
struct fs_enet_private {TYPE_1__ scc; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fs_enet_private *fep)
{
	struct platform_device *ofdev = FUNC3(fep->dev);

	fep->interrupt = FUNC1(ofdev->dev.of_node, 0);
	if (!fep->interrupt)
		return -EINVAL;

	fep->scc.sccp = FUNC2(ofdev->dev.of_node, 0);
	if (!fep->scc.sccp)
		return -EINVAL;

	fep->scc.ep = FUNC2(ofdev->dev.of_node, 1);
	if (!fep->scc.ep) {
		FUNC0(fep->scc.sccp);
		return -EINVAL;
	}

	return 0;
}