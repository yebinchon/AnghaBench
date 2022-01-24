#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qede_vlan {scalar_t__ vid; int /*<<< orphan*/  list; scalar_t__ configured; } ;
struct qede_dev {int /*<<< orphan*/  non_configured_vlans; int /*<<< orphan*/  configured_vlans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_vlan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct qede_dev *edev,
				    struct qede_vlan *vlan)
{
	/* vlan0 filter isn't consuming out of our quota */
	if (vlan->vid != 0) {
		if (vlan->configured)
			edev->configured_vlans--;
		else
			edev->non_configured_vlans--;
	}

	FUNC1(&vlan->list);
	FUNC0(vlan);
}