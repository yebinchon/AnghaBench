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
typedef  int u16 ;
struct phy_device {int dummy; } ;
struct adin_clause45_mmd_map {int devad; int cl45_regnum; int adin_regnum; } ;

/* Variables and functions */
 int FUNC0 (struct adin_clause45_mmd_map*) ; 
 int EINVAL ; 
 int MDIO_MMD_VEND1 ; 
 struct adin_clause45_mmd_map* adin_clause45_mmd_map ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,char*,int,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev, int devad,
				 u16 cl45_regnum)
{
	struct adin_clause45_mmd_map *m;
	int i;

	if (devad == MDIO_MMD_VEND1)
		return cl45_regnum;

	for (i = 0; i < FUNC0(adin_clause45_mmd_map); i++) {
		m = &adin_clause45_mmd_map[i];
		if (m->devad == devad && m->cl45_regnum == cl45_regnum)
			return m->adin_regnum;
	}

	FUNC1(phydev,
		   "No translation available for devad: %d reg: %04x\n",
		   devad, cl45_regnum);

	return -EINVAL;
}