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
typedef  int /*<<< orphan*/  uint64_t ;
struct phy_device {int dummy; } ;
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 struct phy_device* FUNC0 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct dsa_switch *ds, int port, uint64_t *data)
{
	struct phy_device *phydev;

	phydev = FUNC0(ds, port);
	if (!phydev)
		return;

	FUNC1(phydev, NULL, data);
}