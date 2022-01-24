#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,int /*<<< orphan*/ *) ; 

int FUNC2(struct cxl *adapter, struct device_node *np)
{
	if (FUNC1(np, &adapter->guest->handle))
		return -EINVAL;
	FUNC0("Adapter handle: 0x%.16llx\n", adapter->guest->handle);

	return 0;
}