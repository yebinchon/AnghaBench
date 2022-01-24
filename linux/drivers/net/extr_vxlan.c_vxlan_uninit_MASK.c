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
struct TYPE_2__ {int /*<<< orphan*/  vni; } ;
struct vxlan_dev {TYPE_1__ cfg; int /*<<< orphan*/  gro_cells; } ;
struct net_device {int /*<<< orphan*/  tstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vxlan_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct vxlan_dev *vxlan = FUNC2(dev);

	FUNC1(&vxlan->gro_cells);

	FUNC3(vxlan, vxlan->cfg.vni);

	FUNC0(dev->tstats);
}