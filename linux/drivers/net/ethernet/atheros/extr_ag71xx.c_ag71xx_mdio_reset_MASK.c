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
struct mii_bus {struct ag71xx* priv; } ;
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MII_CFG ; 
 int MII_CFG_RESET ; 
 int FUNC0 (struct ag71xx*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus)
{
	struct ag71xx *ag = bus->priv;
	int err;
	u32 t;

	err = FUNC0(ag, &t);
	if (err)
		return err;

	FUNC1(ag, AG71XX_REG_MII_CFG, t | MII_CFG_RESET);
	FUNC2(100, 200);

	FUNC1(ag, AG71XX_REG_MII_CFG, t);
	FUNC2(100, 200);

	return 0;
}