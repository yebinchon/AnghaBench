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
typedef  int u32 ;
struct phy_device {int dummy; } ;
struct phy_c45_device_ids {int /*<<< orphan*/  member_0; } ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct phy_device* FUNC0 (int) ; 
 int FUNC1 (struct mii_bus*,int,int*,int,struct phy_c45_device_ids*) ; 
 struct phy_device* FUNC2 (struct mii_bus*,int,int,int,struct phy_c45_device_ids*) ; 

struct phy_device *FUNC3(struct mii_bus *bus, int addr, bool is_c45)
{
	struct phy_c45_device_ids c45_ids = {0};
	u32 phy_id = 0;
	int r;

	r = FUNC1(bus, addr, &phy_id, is_c45, &c45_ids);
	if (r)
		return FUNC0(r);

	/* If the phy_id is mostly Fs, there is no device there */
	if ((phy_id & 0x1fffffff) == 0x1fffffff)
		return FUNC0(-ENODEV);

	return FUNC2(bus, addr, phy_id, is_c45, &c45_ids);
}