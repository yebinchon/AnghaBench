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
struct phy_probe_info {int dummy; } ;
struct niu_parent {int dummy; } ;
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  MII_PHYSID2 ; 
 int /*<<< orphan*/  NIU_PCS_DEV_ADDR ; 
 int /*<<< orphan*/  NIU_PMA_PMD_DEV_ADDR ; 
 int /*<<< orphan*/  PHY_TYPE_MII ; 
 int /*<<< orphan*/  PHY_TYPE_PCS ; 
 int /*<<< orphan*/  PHY_TYPE_PMA_PMD ; 
 int FUNC0 (struct niu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_probe_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct niu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*,unsigned long) ; 
 int FUNC5 (struct niu_parent*,struct phy_probe_info*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct niu *np, struct niu_parent *parent,
			       struct phy_probe_info *info)
{
	unsigned long flags;
	int port, err;

	FUNC1(info, 0, sizeof(*info));

	/* Port 0 to 7 are reserved for onboard Serdes, probe the rest.  */
	FUNC3(np, flags);
	err = 0;
	for (port = 8; port < 32; port++) {
		int dev_id_1, dev_id_2;

		dev_id_1 = FUNC0(np, port,
				     NIU_PMA_PMD_DEV_ADDR, MII_PHYSID1);
		dev_id_2 = FUNC0(np, port,
				     NIU_PMA_PMD_DEV_ADDR, MII_PHYSID2);
		err = FUNC5(parent, info, dev_id_1, dev_id_2, port,
				 PHY_TYPE_PMA_PMD);
		if (err)
			break;
		dev_id_1 = FUNC0(np, port,
				     NIU_PCS_DEV_ADDR, MII_PHYSID1);
		dev_id_2 = FUNC0(np, port,
				     NIU_PCS_DEV_ADDR, MII_PHYSID2);
		err = FUNC5(parent, info, dev_id_1, dev_id_2, port,
				 PHY_TYPE_PCS);
		if (err)
			break;
		dev_id_1 = FUNC2(np, port, MII_PHYSID1);
		dev_id_2 = FUNC2(np, port, MII_PHYSID2);
		err = FUNC5(parent, info, dev_id_1, dev_id_2, port,
				 PHY_TYPE_MII);
		if (err)
			break;
	}
	FUNC4(np, flags);

	return err;
}