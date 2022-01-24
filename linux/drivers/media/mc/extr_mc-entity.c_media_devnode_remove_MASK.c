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
struct TYPE_2__ {int /*<<< orphan*/  graph_obj; } ;
struct media_intf_devnode {TYPE_1__ intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct media_intf_devnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(struct media_intf_devnode *devnode)
{
	FUNC2(&devnode->intf);
	FUNC1(&devnode->intf.graph_obj);
	FUNC0(devnode);
}