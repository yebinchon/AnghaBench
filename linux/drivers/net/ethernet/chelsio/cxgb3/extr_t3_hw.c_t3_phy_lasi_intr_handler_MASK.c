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
struct cphy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 unsigned int MDIO_PMA_LASI_LSALARM ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_STAT ; 
 int cphy_cause_link_change ; 
 int FUNC0 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC1(struct cphy *phy)
{
	unsigned int status;
	int err = FUNC0(phy, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_STAT,
			       &status);

	if (err)
		return err;
	return (status & MDIO_PMA_LASI_LSALARM) ? cphy_cause_link_change : 0;
}