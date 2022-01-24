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
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {struct ethoc* priv; } ;
struct ethoc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MIIADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  MIICOMMAND ; 
 int /*<<< orphan*/  MIICOMMAND_WRITE ; 
 int /*<<< orphan*/  MIISTATUS ; 
 int MIISTATUS_BUSY ; 
 int /*<<< orphan*/  MIITX_DATA ; 
 int FUNC1 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy, int reg, u16 val)
{
	struct ethoc *priv = bus->priv;
	int i;

	FUNC2(priv, MIIADDRESS, FUNC0(phy, reg));
	FUNC2(priv, MIITX_DATA, val);
	FUNC2(priv, MIICOMMAND, MIICOMMAND_WRITE);

	for (i = 0; i < 5; i++) {
		u32 stat = FUNC1(priv, MIISTATUS);
		if (!(stat & MIISTATUS_BUSY)) {
			/* reset MII command register */
			FUNC2(priv, MIICOMMAND, 0);
			return 0;
		}
		FUNC3(100, 200);
	}

	return -EBUSY;
}