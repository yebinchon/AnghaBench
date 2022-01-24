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
struct lan9303 {int phy_addr_base; TYPE_1__* ops; } ;
struct dsa_switch {struct lan9303* priv; } ;
struct TYPE_2__ {int (* phy_read ) (struct lan9303*,int,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct lan9303*,int) ; 
 int FUNC1 (struct lan9303*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dsa_switch *ds, int phy, int regnum)
{
	struct lan9303 *chip = ds->priv;
	int phy_base = chip->phy_addr_base;

	if (phy == phy_base)
		return FUNC0(chip, regnum);
	if (phy > phy_base + 2)
		return -ENODEV;

	return chip->ops->phy_read(chip, phy, regnum);
}