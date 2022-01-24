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
struct mdio_ops {int dummy; } ;
struct cphy {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int SUPPORTED_10000baseT_Full ; 
 int SUPPORTED_AUI ; 
 int SUPPORTED_FIBRE ; 
 int SUPPORTED_IRQ ; 
 int /*<<< orphan*/  ael2020_ops ; 
 int /*<<< orphan*/  ael2020_reset_regs ; 
 int /*<<< orphan*/  FUNC0 (struct cphy*,struct adapter*,int,int /*<<< orphan*/ *,struct mdio_ops const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct cphy*,int /*<<< orphan*/ ) ; 

int FUNC3(struct cphy *phy, struct adapter *adapter, int phy_addr,
			const struct mdio_ops *mdio_ops)
{
	int err;

	FUNC0(phy, adapter, phy_addr, &ael2020_ops, mdio_ops,
		  SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_FIBRE |
		  SUPPORTED_IRQ, "10GBASE-R");
	FUNC1(125);

	err = FUNC2(phy, ael2020_reset_regs);
	if (err)
		return err;
	return 0;
}